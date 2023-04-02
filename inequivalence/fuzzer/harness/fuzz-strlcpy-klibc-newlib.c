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
    if (fuzz_harness_strlcpy(argc, argv, mem, &dest_offset, &src_offset, &n)) {
        return 1;
    }
    char mem_initial[VMEM_SIZE], final_mem_klibc[VMEM_SIZE], final_mem_newlib[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    const size_t ret_klibc = strlcpy_klibc(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_klibc, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    const size_t ret_newlib = strlcpy_newlib(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_newlib, mem, VMEM_SIZE);

    if (ret_klibc != ret_newlib) {
        fprintf(stderr, "Fatal: found an inequivalence between the klibc and newlib implementations!\n");
        assert(0); 
    }
    if (!mem_eq(final_mem_klibc, final_mem_newlib, VMEM_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the klibc and newlib implementations!\n");
        assert(0);
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_strlcpy(argc, argv, dest, src, &n)) {
        return 1;
    }
    char dest_initial[MAX_SIZE], final_dest_klibc[MAX_SIZE], final_dest_newlib[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    const size_t ret_klibc = strlcpy_klibc(dest, src, n);
    memcpy(final_dest_klibc, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    const size_t ret_newlib = strlcpy_newlib(dest, src, n);
    memcpy(final_dest_newlib, dest, MAX_SIZE);

    if (ret_klibc != ret_newlib) {
        fprintf(stderr, "Fatal: found an inequivalence between the klibc and newlib implementations!\n");
        assert(0);
    }
    if (!mem_eq(final_dest_klibc, final_dest_newlib, MAX_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the klibc and newlib implementations!\n");
        assert(0);
    }
    #endif
    
    return 0;
}
