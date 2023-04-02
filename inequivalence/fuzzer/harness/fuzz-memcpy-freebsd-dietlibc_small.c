#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>
#include <wchar.h>
#include <time.h>
#include <unistd.h>
#include "fuzz_harness.h"


int main(int argc, char** argv)
{
    size_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_memcpy(argc, argv, mem, &dest_offset, &src_offset, &n)) {
        return 1;
    }
    char mem_initial[VMEM_SIZE], final_mem_freebsd[VMEM_SIZE], final_mem_dietlibc_small[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    const void *ret_freebsd = memcpy_freebsd(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_freebsd, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    const void *ret_dietlibc_small = memcpy_dietlibc_small(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_dietlibc_small, mem, VMEM_SIZE);

    if (ret_freebsd != ret_dietlibc_small) {
        fprintf(stderr, "Fatal: found an inequivalence between the freebsd and dietlibc_small implementations!\n");
        assert(0); 
    }
    if (!mem_eq(final_mem_freebsd, final_mem_dietlibc_small, VMEM_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the freebsd and dietlibc_small implementations!\n");
        assert(0);
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_memcpy(argc, argv, dest, src, &n)) {
        return 1;
    }
    char dest_initial[MAX_SIZE], final_dest_freebsd[MAX_SIZE], final_dest_dietlibc_small[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    const void *ret_freebsd = memcpy_freebsd(dest, src, n);
    memcpy(final_dest_freebsd, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    const void *ret_dietlibc_small = memcpy_dietlibc_small(dest, src, n);
    memcpy(final_dest_dietlibc_small, dest, MAX_SIZE);

    if (ret_freebsd != ret_dietlibc_small) {
        fprintf(stderr, "Fatal: found an inequivalence between the freebsd and dietlibc_small implementations!\n");
        assert(0);
    }
    if (!mem_eq(final_dest_freebsd, final_dest_dietlibc_small, MAX_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the freebsd and dietlibc_small implementations!\n");
        assert(0);
    }
    #endif
    
    return 0;
}
