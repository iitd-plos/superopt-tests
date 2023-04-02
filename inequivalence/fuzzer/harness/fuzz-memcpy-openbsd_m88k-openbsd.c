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
    char mem_initial[VMEM_SIZE], final_mem_openbsd_m88k[VMEM_SIZE], final_mem_openbsd[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    const void *ret_openbsd_m88k = memcpy_openbsd_m88k(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_openbsd_m88k, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    const void *ret_openbsd = memcpy_openbsd(mem + dest_offset, mem + src_offset, n);
    memcpy(final_mem_openbsd, mem, VMEM_SIZE);

    if (ret_openbsd_m88k != ret_openbsd) {
        fprintf(stderr, "Fatal: found an inequivalence between the openbsd_m88k and openbsd implementations!\n");
        assert(0); 
    }
    if (!mem_eq(final_mem_openbsd_m88k, final_mem_openbsd, VMEM_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the openbsd_m88k and openbsd implementations!\n");
        assert(0);
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_memcpy(argc, argv, dest, src, &n)) {
        return 1;
    }
    char dest_initial[MAX_SIZE], final_dest_openbsd_m88k[MAX_SIZE], final_dest_openbsd[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    const void *ret_openbsd_m88k = memcpy_openbsd_m88k(dest, src, n);
    memcpy(final_dest_openbsd_m88k, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    const void *ret_openbsd = memcpy_openbsd(dest, src, n);
    memcpy(final_dest_openbsd, dest, MAX_SIZE);

    if (ret_openbsd_m88k != ret_openbsd) {
        fprintf(stderr, "Fatal: found an inequivalence between the openbsd_m88k and openbsd implementations!\n");
        assert(0);
    }
    if (!mem_eq(final_dest_openbsd_m88k, final_dest_openbsd, MAX_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the openbsd_m88k and openbsd implementations!\n");
        assert(0);
    }
    #endif
    
    return 0;
}
