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
    char mem_initial[VMEM_SIZE], final_mem_newlib[VMEM_SIZE], final_mem_freebsd[VMEM_SIZE];
    memcpy(mem_initial, mem, VMEM_SIZE);

    swab_newlib(mem + src_offset, mem + dest_offset, n);
    memcpy(final_mem_newlib, mem, VMEM_SIZE);
    memcpy(mem, mem_initial, VMEM_SIZE);

    swab_freebsd(mem + src_offset, mem + dest_offset, n);
    memcpy(final_mem_freebsd, mem, VMEM_SIZE);

    if (!mem_eq(final_mem_newlib, final_mem_freebsd, VMEM_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the newlib and freebsd implementations!\n");
        assert(0);
    }
    #else
    char dest[MAX_SIZE], src[MAX_SIZE];
    if (fuzz_harness_swab(argc, argv, dest, src, &n)) {
        return 1;
    }
    char dest_initial[MAX_SIZE], final_dest_newlib[MAX_SIZE], final_dest_freebsd[MAX_SIZE];
    memcpy(dest_initial, dest, MAX_SIZE);

    swab_newlib(src, dest, n);
    memcpy(final_dest_newlib, dest, MAX_SIZE);
    memcpy(dest, dest_initial, MAX_SIZE);

    swab_freebsd(src, dest, n);
    memcpy(final_dest_freebsd, dest, MAX_SIZE);

    if (!mem_eq(final_dest_newlib, final_dest_freebsd, MAX_SIZE)) {
        fprintf(stderr, "Fatal: found an inequivalence between the newlib and freebsd implementations!\n");
        assert(0);
    }
    #endif
    
    return 0;
}
