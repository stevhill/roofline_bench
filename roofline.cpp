#include <hip/hip_runtime.h>
#include <cstdio>
#include <vector>
#include <cmath>
#include <cstdint>

// =========================
// Kernel math definitions
// =========================
#define KERNEL1(a,b,c)   ((a) = (b) + (c))              // 1 FLOP
#define KERNEL2(a,b,c)   ((a) = (a)*(b) + (c))          // 2 FLOPs (FMA-like)

// Unrolling macros
#define REP2(S)        S; S
#define REP4(S)   REP2(S); REP2(S)
#define REP8(S)   REP4(S); REP4(S)
#define REP16(S)  REP8(S); REP8(S)
#define REP32(S)  REP16(S); REP16(S)
#define REP64(S)  REP32(S); REP32(S)
#define REP128(S) REP64(S); REP64(S)
#define REP256(S) REP128(S); REP128(S)
#define REP512(S) REP256(S); REP256(S)
#define REP1024(S) REP512(S); REP512(S)

// =========================
// Select REP factor here
// =========================
#ifndef REP_FACTOR
#define REP_FACTOR 1024
#endif

// Map REP_FACTOR → macro
#if REP_FACTOR == 1
  #define FLOP_BODY(beta,x,alpha) KERNEL2(beta,x,alpha)
#elif REP_FACTOR == 2
  #define FLOP_BODY(beta,x,alpha) REP2(KERNEL2(beta,x,alpha))
#elif REP_FACTOR == 4
  #define FLOP_BODY(beta,x,alpha) REP4(KERNEL2(beta,x,alpha))
#elif REP_FACTOR == 8
  #define FLOP_BODY(beta,x,alpha) REP8(KERNEL2(beta,x,alpha))
#elif REP_FACTOR == 16
  #define FLOP_BODY(beta,x,alpha) REP16(KERNEL2(beta,x,alpha))
#elif REP_FACTOR == 32
  #define FLOP_BODY(beta,x,alpha) REP32(KERNEL2(beta,x,alpha))
#elif REP_FACTOR == 64
  #define FLOP_BODY(beta,x,alpha) REP64(KERNEL2(beta,x,alpha))
#elif REP_FACTOR == 128
  #define FLOP_BODY(beta,x,alpha) REP128(KERNEL2(beta,x,alpha))
#elif REP_FACTOR == 256
  #define FLOP_BODY(beta,x,alpha) REP256(KERNEL2(beta,x,alpha))
#elif REP_FACTOR == 512
  #define FLOP_BODY(beta,x,alpha) REP512(KERNEL2(beta,x,alpha))
#elif REP_FACTOR == 1024
  #define FLOP_BODY(beta,x,alpha) REP1024(KERNEL2(beta,x,alpha))
#else
  #error "Unsupported REP_FACTOR"
#endif

// FLOP accounting
#define FLOPS_PER_OP 2
#define FLOPS_PER_ITER (REP_FACTOR * FLOPS_PER_OP)

// =========================
// Kernel
// =========================
extern "C" __global__
void microbench_kernel(const uint32_t* __restrict__ params,
                       const float* __restrict__ ibuff,
                       uint32_t* __restrict__ retval)
{
    uint32_t wsssize = params[0];
    uint32_t ntrials = params[1];

    uint32_t global_id = blockIdx.x * blockDim.x + threadIdx.x;
    uint32_t total_thr = gridDim.x * blockDim.x;

    uint32_t elem_per_thr = (wsssize + total_thr - 1u) / total_thr;

    uint32_t start_idx = global_id;
    uint32_t end_idx   = start_idx + elem_per_thr * total_thr;
    uint32_t stride    = total_thr;

    if (start_idx > wsssize) start_idx = wsssize;
    if (end_idx   > wsssize) end_idx   = wsssize;

    float alpha = 0.5f;

    for (uint32_t j = 0; j < ntrials; ++j) {
        for (uint32_t i = start_idx; i < end_idx; i += stride) {

            float beta = 0.8f;
            float x = ibuff[i];  // 1 global load

            // compute body
            FLOP_BODY(beta, x, alpha);

            // prevent optimization
            asm volatile("" : "+v"(beta));
            if ((i & 1023) == 0)
                retval[threadIdx.x] = (uint32_t)beta;
        }
    }

    if (global_id == 0) {
        retval[0] = 4u;
        retval[1] = 2u;
        retval[3] = 0u;
    }
}

// =========================
// Timing
// =========================
float measure_kernel(dim3 grid, dim3 block,
                     const uint32_t* d_params,
                     const float* d_ibuff,
                     uint32_t* d_retval)
{
    hipEvent_t start, stop;
    hipEventCreate(&start);
    hipEventCreate(&stop);

    hipEventRecord(start, 0);

    hipLaunchKernelGGL(microbench_kernel,
                       grid, block, 0, 0,
                       d_params, d_ibuff, d_retval);

    hipEventRecord(stop, 0);
    hipEventSynchronize(stop);

    float ms = 0.0f;
    hipEventElapsedTime(&ms, start, stop);

    hipEventDestroy(start);
    hipEventDestroy(stop);

    return ms;
}

// =========================
// Main (roofline extraction)
// =========================
int main()
{
    // Working set size (elements)
    uint32_t wsssize = 64 * 1024 * 1024; // 64M elements (~256MB)
    uint32_t ntrials = 10;

    // Allocate host
    std::vector<float> h_ibuff(wsssize, 1.0f);
    uint32_t h_params[2] = {wsssize, ntrials};

    // Allocate device
    float* d_ibuff;
    uint32_t* d_params;
    uint32_t* d_retval;

    hipMalloc(&d_ibuff, wsssize * sizeof(float));
    hipMalloc(&d_params, 2 * sizeof(uint32_t));
    hipMalloc(&d_retval, 256 * sizeof(uint32_t));

    hipMemcpy(d_ibuff, h_ibuff.data(),
              wsssize * sizeof(float), hipMemcpyHostToDevice);
    hipMemcpy(d_params, h_params,
              2 * sizeof(uint32_t), hipMemcpyHostToDevice);

    // Launch config
    int block_size = 256;
    int grid_size  = (wsssize + block_size - 1) / block_size;

    // Measure
    float time_ms = measure_kernel(dim3(grid_size),
                                   dim3(block_size),
                                   d_params,
                                   d_ibuff,
                                   d_retval);

    double time_s = time_ms / 1e3;

    // Metrics
    double total_flops =
        (double)wsssize * ntrials * FLOPS_PER_ITER;

    double total_bytes =
        (double)wsssize * ntrials * 4.0;

    double gflops = total_flops / time_s / 1e9;
    double bandwidth = total_bytes / time_s / 1e9;
    double ai = total_flops / total_bytes;

    // Output CSV
    printf("REP_FACTOR,Time(ms),GFLOPs,GBps,AI\n");
    printf("%d,%.4f,%.2f,%.2f,%.2f\n",
           REP_FACTOR, time_ms, gflops, bandwidth, ai);

    // Cleanup
    hipFree(d_ibuff);
    hipFree(d_params);
    hipFree(d_retval);

    return 0;
}