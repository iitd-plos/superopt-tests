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
    char mem_initial[VMEM_SIZE], final_mem_netbsd_small[VMEM_SIZE], final_mem_netbsd_fast[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    const void *ret_netbsd_small = memcpy_netbsd_small(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_netbsd_small, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    const void *ret_netbsd_fast = memcpy_netbsd_fast(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_netbsd_fast, mem, VMEM_SIZE);

    if (ret_netbsd_small != ret_netbsd_fast) {
        fprintf(stderr, "Fatal: found an inequivalence between the netbsd_small and netbsd_fast implementations!\n");
        assert(0); 
    }
    if (!mem_eq(final_mem_netbsd_small, final_mem_netbsd_fast, VMEM_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the netbsd_small and netbsd_fast implementations!\n");
        assert(0);
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_memcpy(argc, argv, dest, src, &n)) {
        return 1;
    }
    char dest_initial[MAX_SIZE], final_dest_netbsd_small[MAX_SIZE], final_dest_netbsd_fast[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    const void *ret_netbsd_small = memcpy_netbsd_small(dest, src, n);
    memcpy(final_dest_netbsd_small, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    const void *ret_netbsd_fast = memcpy_netbsd_fast(dest, src, n);
    memcpy(final_dest_netbsd_fast, dest, MAX_SIZE);

    if (ret_netbsd_small != ret_netbsd_fast) {
        fprintf(stderr, "Fatal: found an inequivalence between the netbsd_small and netbsd_fast implementations!\n");
        assert(0);
    }
    if (!mem_eq(final_dest_netbsd_small, final_dest_netbsd_fast, MAX_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the netbsd_small and netbsd_fast implementations!\n");
        assert(0);
    }
    #endif
    
    return 0;
}
