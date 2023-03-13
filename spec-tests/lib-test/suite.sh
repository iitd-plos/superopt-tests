# strlen
. par_script.sh strlen arr dietlibc_fast
. par_script.sh strlen arr dietlibc_small
. par_script.sh strlen arr glibc
. par_script.sh strlen arr klibc
. par_script.sh strlen arr musl
. par_script.sh strlen arr netbsd
. par_script.sh strlen arr newlib
. par_script.sh strlen arr openbsd
. par_script.sh strlen arr uClibc
# . par_script.sh strlen freebsd arr

. par_script.sh strlen ls 1ls
. par_script.sh strlen ls 4ls

. par_script.sh strlen cls 4cls

# strchr
. par_script.sh strchr arr dietlibc_fast
. par_script.sh strchr arr dietlibc_small
. par_script.sh strchr arr glibc
. par_script.sh strchr arr klibc
. par_script.sh strchr arr newlib_small
. par_script.sh strchr arr openbsd
. par_script.sh strchr arr uClibc
# . par_script.sh strchr freebsd arr
# . par_script.sh strchr musl arr
# . par_script.sh strchr newlib_fast arr

. par_script.sh strchr ls 1ls
. par_script.sh strchr ls 4ls

# . par_script.sh strchr 4cls cls [returning struct becomes store on input pointer in LLVM IR which messes with aliasing]

# strcmp
. par_script.sh strcmp arr dietlibc_small
. par_script.sh strcmp arr glibc
. par_script.sh strcmp arr klibc
. par_script.sh strcmp arr musl
. par_script.sh strcmp arr netbsd
. par_script.sh strcmp arr newlib_fast
. par_script.sh strcmp arr newlib_small
. par_script.sh strcmp arr openbsd
. par_script.sh strcmp arr uClibc
. par_script.sh strcmp arr freebsd
# . par_script.sh strcmp dietlibc_fast arr

. par_script.sh strcmp ls 1ls
. par_script.sh strcmp ls 4ls

. par_script.sh strcmp cls 4cls

# strspn
. par_script.sh strspn arr_arr dietlibc
. par_script.sh strspn arr_arr 1arr_4arr
# . par_script.sh strspn newlib arr_arr
# . par_script.sh strspn openbsd arr_arr
# . par_script.sh strspn uClibc arr_arr
# . par_script.sh strspn freebsd arr_arr [unsupported]
# . par_script.sh strspn glibc arr_arr [unsupported]
# . par_script.sh strspn musl arr_arr [unsupported]
# . par_script.sh strspn netbsd arr_arr [unsupported]

. par_script.sh strspn arr_ls 1arr_1ls
. par_script.sh strspn arr_ls 1arr_4ls

. par_script.sh strspn arr_cls 1arr_4cls

. par_script.sh strspn ls_arr 1ls_1arr
. par_script.sh strspn ls_arr 1ls_4arr

. par_script.sh strspn ls_ls 1ls_1ls
. par_script.sh strspn ls_ls 1ls_4ls

. par_script.sh strspn ls_cls 1ls_4cls

# strcspn
. par_script.sh strcspn arr_arr dietlibc
. par_script.sh strcspn arr_arr 1arr_4arr
# . par_script.sh strcspn newlib arr_arr
# . par_script.sh strcspn openbsd arr_arr
# . par_script.sh strcspn uClibc arr_arr
# . par_script.sh strcspn freebsd arr_arr [unsupported]
# . par_script.sh strcspn glibc arr_arr [unsupported]
# . par_script.sh strcspn musl arr_arr [unsupported]
# . par_script.sh strcspn netbsd arr_arr [unsupported]

. par_script.sh strcspn arr_ls 1arr_1ls
. par_script.sh strcspn arr_ls 1arr_4ls

. par_script.sh strcspn arr_cls 1arr_4cls

. par_script.sh strcspn ls_arr 1ls_1arr
. par_script.sh strcspn ls_arr 1ls_4arr

. par_script.sh strcspn ls_ls 1ls_1ls
. par_script.sh strcspn ls_ls 1ls_4ls

. par_script.sh strcspn ls_cls 1ls_4cls

# strpbrk
. par_script.sh strpbrk arr_arr dietlibc
. par_script.sh strpbrk arr_arr 1arr_4arr
# . par_script.sh strpbrk newlib arr_arr
# . par_script.sh strpbrk freebsd arr_arr
# . par_script.sh strpbrk glibc arr_arr
# . par_script.sh strpbrk musl arr_arr
# . par_script.sh strpbrk openbsd arr_arr
# . par_script.sh strpbrk uClibc arr_arr
# . par_script.sh strpbrk netbsd arr_arr [unsupported]

. par_script.sh strpbrk arr_ls 1arr_1ls
. par_script.sh strpbrk arr_ls 1arr_4ls

. par_script.sh strpbrk arr_cls 1arr_4cls

. par_script.sh strpbrk ls_arr 1ls_1arr
. par_script.sh strpbrk ls_arr 1ls_4arr

. par_script.sh strpbrk ls_ls 1ls_1ls
. par_script.sh strpbrk ls_ls 1ls_4ls

. par_script.sh strpbrk ls_cls 1ls_4cls

# vecdot
. par_script.sh vecdot arr 1arr
. par_script.sh vecdot arr 4arr

. par_script.sh vecdot ls 1ls
. par_script.sh vecdot ls 4ls

. par_script.sh vecdot cls 4cls

# matfreq
. par_script.sh matfreq arr_arr 1arr_1arr
. par_script.sh matfreq arr_arr 1arr_4arr

. par_script.sh matfreq rmarr 1rmarr
. par_script.sh matfreq rmarr 4rmarr

. par_script.sh matfreq cmarr 1cmarr
. par_script.sh matfreq cmarr 4cmarr

. par_script.sh matfreq ls_arr 1ls_1arr
. par_script.sh matfreq ls_arr 1ls_4arr

. par_script.sh matfreq arr_ls 1arr_1ls
. par_script.sh matfreq arr_ls 1arr_4ls

. par_script.sh matfreq arr_cls 1arr_4cls