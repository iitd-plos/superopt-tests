## 6 6 ##

# sum_tree
source run_test.sh sum_tree arr 1arr 5 3 3 "tree-u32[]-sum"

source run_test.sh sum_tree tree 1tree 5 3 3 "tree-tnode(u32)-sum"

## 12 12 ##

# mk_list
source run_test.sh mk_list ls 1ls 5 6 6 "list-lnode(u32)-construct"

# sum_list
source run_test.sh sum_list arr 1arr 5 6 6 "list-u32[]-sum:naive"
source run_test.sh sum_list arr 4arr 5 6 6 "list-u32[]-sum:opt"

source run_test.sh sum_list ls 1ls 5 6 6 "list-lnode(u32)-sum:naive"
source run_test.sh sum_list ls 4ls 5 6 6 "list-lnode(u32)-sum:opt"

source run_test.sh sum_list cls 4cls 5 6 6 "list-clnode(u32)-sum:opt"

# strlen
source run_test.sh strlen arr dietlibc_fast 5 6 6 "strlen-u32[]-dietlibc:fast"
source run_test.sh strlen arr dietlibc_small 5 6 6 "strlen-u32[]-dietlibc:small"
source run_test.sh strlen arr glibc 5 6 6 "strlen-u32[]-glibc"
source run_test.sh strlen arr klibc 5 6 6 "strlen-u32[]-klibc"
source run_test.sh strlen arr musl 5 6 6 "strlen-u32[]-musl"
source run_test.sh strlen arr netbsd 5 6 6 "strlen-u32[]-netbsd"
source run_test.sh strlen arr newlib 5 6 6 "strlen-u32[]-newlib"
source run_test.sh strlen arr openbsd 5 6 6 "strlen-u32[]-openbsd"
source run_test.sh strlen arr uClibc 5 6 6 "strlen-u32[]-uClibc"

source run_test.sh strlen ls 1ls 5 6 6 "strlen-lnode(u32)-naive"
source run_test.sh strlen ls 4ls 5 6 6 "strlen-lnode(u32)-opt"

source run_test.sh strlen cls 4cls 5 6 6 "strlen-clnode(u32)-opt"

# strchr
source run_test.sh strchr arr dietlibc_fast 5 6 6 "strchr-u32[]-dietlibc:fast"
source run_test.sh strchr arr dietlibc_small 5 6 6 "strchr-u32[]-dietlibc:small"
source run_test.sh strchr arr glibc 5 6 6 "strchr-u32[]-glibc"
source run_test.sh strchr arr klibc 5 6 6 "strchr-u32[]-klibc"
source run_test.sh strchr arr newlib_small 5 6 6 "strchr-u32[]-newlib:small"
source run_test.sh strchr arr openbsd 5 6 6 "strchr-u32[]-openbsd"
source run_test.sh strchr arr uClibc 5 6 6 "strchr-u32[]-uClibc"

source run_test.sh strchr ls 1ls 5 6 6 "strchr-lnode(u32)-naive"
source run_test.sh strchr ls 4ls 5 6 6 "strchr-lnode(u32)-opt"

# strcmp
source run_test.sh strcmp arr dietlibc_small 5 6 6 "strcmp-u32[]:u32[]-dietlibc:small"
source run_test.sh strcmp arr glibc 5 6 6 "strcmp-u32[]:u32[]-glibc"
source run_test.sh strcmp arr klibc 5 6 6 "strcmp-u32[]:u32[]-klibc"
source run_test.sh strcmp arr musl 5 6 6 "strcmp-u32[]:u32[]-musl"
source run_test.sh strcmp arr netbsd 5 6 6 "strcmp-u32[]:u32[]-netbsd"
source run_test.sh strcmp arr newlib_fast 5 6 6 "strcmp-u32[]:u32[]-newlib:fast"
source run_test.sh strcmp arr newlib_small 5 6 6 "strcmp-u32[]:u32[]-newlib:small"
source run_test.sh strcmp arr openbsd 5 6 6 "strcmp-u32[]:u32[]-openbsd"
source run_test.sh strcmp arr uClibc 5 6 6 "strcmp-u32[]:u32[]-uClibc"
source run_test.sh strcmp arr freebsd 5 6 6 "strcmp-u32[]:u32[]-freebsd"

source run_test.sh strcmp ls 1ls 5 6 6 "strcmp-lnode(u8):lnode(u8)-naive"
source run_test.sh strcmp ls 4ls 5 6 6 "strcmp-lnode(u8):lnode(u8)-opt"

source run_test.sh strcmp cls 4cls 5 6 6 "strcmp-clnode(u8):clnode(u8)-naive"

# strspn
source run_test.sh strspn arr_arr dietlibc 5 6 6 "strspn-u8[]:u8[]-dietlibc"
source run_test.sh strspn arr_arr 1arr_4arr 5 6 6 "strspn-u8[]:u8[]-opt"

source run_test.sh strspn arr_ls 1arr_1ls 5 6 6 "strspn-u8[]:lnode(u32)-naive"
source run_test.sh strspn arr_ls 1arr_4ls 5 6 6 "strspn-u8[]:lnode(u32)-opt"

source run_test.sh strspn arr_cls 1arr_4cls 5 6 6 "strspn-u8[]:clnode(u32)-opt"

source run_test.sh strspn ls_arr 1ls_1arr 5 6 6 "strspn-lnode(u32):u8[]-naive"
source run_test.sh strspn ls_arr 1ls_4arr 5 6 6 "strspn-lnode(u32):u8[]-opt"

source run_test.sh strspn ls_ls 1ls_1ls 5 6 6 "strspn-lnode(u32):lnode(u32)-naive"
source run_test.sh strspn ls_ls 1ls_4ls 5 6 6 "strspn-lnode(u32):lnode(u32)-opt"

source run_test.sh strspn ls_cls 1ls_4cls 5 6 6 "strspn-lnode(u32):clnode(u32)-opt"

# strcspn
source run_test.sh strcspn arr_arr dietlibc 5 6 6 "strcspn-u8[]:u8[]-dietlibc"
source run_test.sh strcspn arr_arr 1arr_4arr 5 6 6 "strcspn-u8[]:u8[]-opt"

source run_test.sh strcspn arr_ls 1arr_1ls 5 6 6 "strcspn-u8[]:lnode(u32)-naive"
source run_test.sh strcspn arr_ls 1arr_4ls 5 6 6 "strcspn-u8[]:lnode(u32)-opt"

source run_test.sh strcspn arr_cls 1arr_4cls 5 6 6 "strcspn-u8[]:clnode(u32)-opt"

source run_test.sh strcspn ls_arr 1ls_1arr 5 6 6 "strcspn-lnode(u32):u8[]-naive"
source run_test.sh strcspn ls_arr 1ls_4arr 5 6 6 "strcspn-lnode(u32):u8[]-opt"

source run_test.sh strcspn ls_ls 1ls_1ls 5 6 6 "strcspn-lnode(u32):lnode(u32)-naive"
source run_test.sh strcspn ls_ls 1ls_4ls 5 6 6 "strcspn-lnode(u32):lnode(u32)-opt"

source run_test.sh strcspn ls_cls 1ls_4cls 5 6 6 "strcspn-lnode(u32):clnode(u32)-opt"

# strpbrk
source run_test.sh strpbrk arr_arr dietlibc 5 6 6 "strpbrk-u8[]:u8[]-dietlibc"
source run_test.sh strpbrk arr_arr 1arr_4arr 5 6 6 "strpbrk-u8[]:u8[]-opt"

source run_test.sh strpbrk arr_ls 1arr_1ls 5 6 6 "strpbrk-u8[]:lnode(u32)-naive"
source run_test.sh strpbrk arr_ls 1arr_4ls 5 6 6 "strpbrk-u8[]:lnode(u32)-opt"

source run_test.sh strpbrk arr_cls 1arr_4cls 5 6 6 "strpbrk-u8[]:clnode(u32)-opt"

source run_test.sh strpbrk ls_arr 1ls_1arr 5 6 6 "strpbrk-lnode(u32):u8[]-naive"
source run_test.sh strpbrk ls_arr 1ls_4arr 5 6 6 "strpbrk-lnode(u32):u8[]-opt"

source run_test.sh strpbrk ls_ls 1ls_1ls 5 6 6 "strpbrk-lnode(u32):lnode(u32)-naive"
source run_test.sh strpbrk ls_ls 1ls_4ls 5 6 6 "strpbrk-lnode(u32):lnode(u32)-opt"

source run_test.sh strpbrk ls_cls 1ls_4cls 5 6 6 "strpbrk-lnode(u32):clnode(u32)-opt"

# vecdot
source run_test.sh vecdot arr 1arr 5 6 6 "list-u32[]-dot:naive"
source run_test.sh vecdot arr 4arr 5 6 6 "list-u32[]-dot:opt"

source run_test.sh vecdot ls 1ls 5 6 6 "list-lnode(u32)-dot:naive"
source run_test.sh vecdot ls 4ls 5 6 6 "list-lnode(u32)-dot:opt"

source run_test.sh vecdot cls 4cls 5 6 6 "list-clnode(u32)-dot:opt"

## 16 16 ##

# matfreq
source run_test.sh matfreq arr_arr 1arr_1arr 5 8 8 "matfreq-u8[][]-naive"
source run_test.sh matfreq arr_arr 1arr_4arr 5 8 8 "matfreq-u8[][]-opt"

source run_test.sh matfreq rmarr 1rmarr 5 8 8 "matfreq-u8[r]-naive"
source run_test.sh matfreq rmarr 4rmarr 5 8 8 "matfreq-u8[r]-opt"

source run_test.sh matfreq cmarr 1cmarr 5 8 8 "matfreq-u8[c]-naive"
source run_test.sh matfreq cmarr 4cmarr 5 8 8 "matfreq-u8[c]-opt"

source run_test.sh matfreq ls_arr 1ls_1arr 5 8 8 "matfreq-lnode(u8[])-naive"
source run_test.sh matfreq ls_arr 1ls_4arr 5 8 8 "matfreq-lnode(u8[])-opt"

source run_test.sh matfreq arr_ls 1arr_1ls 5 8 8 "matfreq-lnode(u8)[]-naive"
source run_test.sh matfreq arr_ls 1arr_4ls 5 8 8 "matfreq-lnode(u8)[]-opt"

source run_test.sh matfreq arr_cls 1arr_4cls 5 8 8 "matfreq-clnode(u8)[]-opt"