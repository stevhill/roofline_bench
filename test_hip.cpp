// Define wavefront size based on target GPU architecture
#if !defined(__AMDGCN_WAVEFRONT_SIZE)
  #if defined(__gfx1100__)
    #define __AMDGCN_WAVEFRONT_SIZE 32
  #elif defined(__gfx906__)
    #define __AMDGCN_WAVEFRONT_SIZE 64
  #elif defined(__gfx908__)
    #define __AMDGCN_WAVEFRONT_SIZE 64
  #elif defined(__gfx90a__)
    #define __AMDGCN_WAVEFRONT_SIZE 64
  #else
    #define __AMDGCN_WAVEFRONT_SIZE 64
  #endif
#endif

#include <hip/hip_runtime.h>
#include <cstdio>
#include <cstdlib>

int main() {
    printf("[TEST] Starting HIP test\n");
    
    int devCount = 0;
    printf("[TEST] Getting device count\n");
    hipError_t e = hipGetDeviceCount(&devCount);
    printf("[TEST] hipGetDeviceCount returned: %d (error: %s)\n", e, hipGetErrorString(e));
    printf("[TEST] Device count: %d\n", devCount);
    
    if (devCount > 0) {
        printf("[TEST] Getting device properties\n");
        hipDeviceProp_t props;
        e = hipGetDeviceProperties(&props, 0);
        printf("[TEST] hipGetDeviceProperties returned: %d (error: %s)\n", e, hipGetErrorString(e));
        printf("[TEST] Device name: %s\n", props.name);
        printf("[TEST] Compute capability: %d.%d\n", props.major, props.minor);
        printf("[TEST] Total global mem: %zu MB\n", props.totalGlobalMem / 1024 / 1024);
    }
    
    printf("[TEST] Done\n");
    return 0;
}
