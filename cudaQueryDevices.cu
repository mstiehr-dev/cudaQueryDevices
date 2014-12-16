


#include <stdio.h>
#include "book.h"


int main(int argc, char **argv) {
	int gpus; 
	cudaDeviceProp prop;
	HANDLE_ERROR( cudaGetDeviceCount(&gpus) );
	printf("you got %d GPUs!\n",gpus);
	int i;
	for(i=0; i<gpus; i++) {
		printf("+-------------------------------------------+\n");
		HANDLE_ERROR( cudaGetDeviceProperties(&prop, 0) );
		printf("+ Name: %s                          +\n", prop.name);
		printf("+ Total global memory: %i           +\n", prop.totalGlobalMem);
		printf("+ Shared memory per block: %i            +\n", prop.sharedMemPerBlock);
		printf("+ Warpsize: %i                              +\n", prop.warpSize);
		printf("+ Maximum grid size: %i, %i, %i    +\n", prop.maxGridSize[0], prop.maxGridSize[1], prop.maxGridSize[2]);
		printf("+ Maximum threads per block: %i           +\n", prop.maxThreadsPerBlock);
		printf("+ Total constant memory: %i              +\n", prop.totalConstMem);
		printf("+ Multiprocessorcount: %i (->96 Cores)       +\n", prop.multiProcessorCount);
		printf("+ Compute compatibility: %d.%d                +\n", prop.major, prop.minor);
		printf("+ deviceOverlap: %d                          +\n", prop.deviceOverlap);
	}
	printf("+-------------------------------------------+\n");
	return 0;
}
