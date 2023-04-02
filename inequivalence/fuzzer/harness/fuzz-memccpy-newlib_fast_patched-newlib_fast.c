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
    int c;
    size_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_memccpy(argc, argv, mem, &dest_offset, &src_offset, &c, &n)) {
        return 1;
    }
    char mem_initial[VMEM_SIZE], final_mem_newlib_fast_patched[VMEM_SIZE], final_mem_newlib_fast[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    const void *ret_newlib_fast_patched = memccpy_newlib_fast_patched(mem + dest_offset, mem + src_offset, c, n);
    memcpy(final_mem_newlib_fast_patched, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    const void *ret_newlib_fast = memccpy_newlib_fast(mem + dest_offset, mem + src_offset, c, n);
    memcpy(final_mem_newlib_fast, mem, VMEM_SIZE);

    if (ret_newlib_fast_patched != ret_newlib_fast) {
        fprintf(stderr, "Fatal: found an inequivalence between the newlib_fast_patched and newlib_fast implementations!\n");
        assert(0); 
    }
    if (!mem_eq(final_mem_newlib_fast_patched, final_mem_newlib_fast, VMEM_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the newlib_fast_patched and newlib_fast implementations!\n");
        assert(0);
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_memccpy(argc, argv, dest, src, &c, &n)) {
        return 1;
    }
    char dest_initial[MAX_SIZE], final_dest_newlib_fast_patched[MAX_SIZE], final_dest_newlib_fast[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    const void *ret_newlib_fast_patched = memccpy_newlib_fast_patched(dest, src, c, n);
    memcpy(final_dest_newlib_fast_patched, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    const void *ret_newlib_fast = memccpy_newlib_fast(dest, src, c, n);
    memcpy(final_dest_newlib_fast, dest, MAX_SIZE);

    if (ret_newlib_fast_patched != ret_newlib_fast) {
        fprintf(stderr, "Fatal: found an inequivalence between the newlib_fast_patched and newlib_fast implementations!\n");
        assert(0);
    }
    if (!mem_eq(final_dest_newlib_fast_patched, final_dest_newlib_fast, MAX_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the newlib_fast_patched and newlib_fast implementations!\n");
        assert(0);
    }
    #endif
    
    return 0;
}
