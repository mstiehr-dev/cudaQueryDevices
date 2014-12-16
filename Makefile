CC=nvcc

all: cudaQueryDevices.cu
	$(CC) cudaQueryDevices.cu -o cudaQueryDevices
