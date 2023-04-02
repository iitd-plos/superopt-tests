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
    ssize_t n;
    #ifdef OVERLAP
    char mem[VMEM_SIZE];
    int dest_offset, src_offset;
    if (fuzz_harness_swab(argc, argv, mem, &dest_offset, &src_offset, &n)) {
        return 1;
    }
    char mem_initial[VMEM_SIZE], final_mem_musl[VMEM_SIZE], final_mem_openbsd[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    swab_musl(mem + src_offset, mem + dest_offset, n);
    memcpy(final_mem_musl, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    swab_openbsd(mem + src_offset, mem + dest_offset, n);
    memcpy(final_mem_openbsd, mem, VMEM_SIZE);

    if (!mem_eq(final_mem_musl, final_mem_openbsd, VMEM_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the musl and openbsd implementations!\n");
        assert(0);
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_swab(argc, argv, dest, src, &n)) {
        return 1;
    }
    char dest_initial[MAX_SIZE], final_dest_musl[MAX_SIZE], final_dest_openbsd[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    swab_musl(src, dest, n);
    memcpy(final_dest_musl, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    swab_openbsd(src, dest, n);
    memcpy(final_dest_openbsd, dest, MAX_SIZE);

    if (!mem_eq(final_dest_musl, final_dest_openbsd, MAX_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the musl and openbsd implementations!\n");
        assert(0);
    }
    #endif
    
    return 0;
}
