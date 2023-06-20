## 6 6 ##
# sum_tree
source par_script.sh sum_tree arr 1arr 6 6

source par_script.sh sum_tree tree 1tree 6 6

## 12 12 ##

# mk_list
source par_script.sh mk_list ls 1ls 12 12

# sum_list
source par_script.sh sum_list arr 1arr 12 12
source par_script.sh sum_list arr 4arr 12 12

source par_script.sh sum_list ls 1ls 12 12
source par_script.sh sum_list ls 4ls 12 12

source par_script.sh sum_list cls 4cls 12 12

# strlen
source par_script.sh strlen arr dietlibc_fast 12 12
source par_script.sh strlen arr dietlibc_small 12 12
source par_script.sh strlen arr glibc 12 12
source par_script.sh strlen arr klibc 12 12
source par_script.sh strlen arr musl 12 12
source par_script.sh strlen arr netbsd 12 12
source par_script.sh strlen arr newlib 12 12
source par_script.sh strlen arr openbsd 12 12
source par_script.sh strlen arr uClibc 12 12

source par_script.sh strlen ls 1ls 12 12
source par_script.sh strlen ls 4ls 12 12

source par_script.sh strlen cls 4cls 12 12

# strchr
source par_script.sh strchr arr dietlibc_fast 12 12
source par_script.sh strchr arr dietlibc_small 12 12
source par_script.sh strchr arr glibc 12 12
source par_script.sh strchr arr klibc 12 12
source par_script.sh strchr arr newlib_small 12 12
source par_script.sh strchr arr openbsd 12 12
source par_script.sh strchr arr uClibc 12 12

source par_script.sh strchr ls 1ls 12 12
source par_script.sh strchr ls 4ls 12 12

# strcmp
source par_script.sh strcmp arr dietlibc_small 12 12
source par_script.sh strcmp arr glibc 12 12
source par_script.sh strcmp arr klibc 12 12
source par_script.sh strcmp arr musl 12 12
source par_script.sh strcmp arr netbsd 12 12
source par_script.sh strcmp arr newlib_fast 12 12
source par_script.sh strcmp arr newlib_small 12 12
source par_script.sh strcmp arr openbsd 12 12
source par_script.sh strcmp arr uClibc 12 12
source par_script.sh strcmp arr freebsd 12 12

source par_script.sh strcmp ls 1ls 12 12
source par_script.sh strcmp ls 4ls 12 12

source par_script.sh strcmp cls 4cls 12 12

# strspn
source par_script.sh strspn arr_arr dietlibc 12 12
source par_script.sh strspn arr_arr 1arr_4arr 12 12

source par_script.sh strspn arr_ls 1arr_1ls 12 12
source par_script.sh strspn arr_ls 1arr_4ls 12 12

source par_script.sh strspn arr_cls 1arr_4cls 12 12

source par_script.sh strspn ls_arr 1ls_1arr 12 12
source par_script.sh strspn ls_arr 1ls_4arr 12 12

source par_script.sh strspn ls_ls 1ls_1ls 12 12
source par_script.sh strspn ls_ls 1ls_4ls 12 12

source par_script.sh strspn ls_cls 1ls_4cls 12 12

# strcspn
source par_script.sh strcspn arr_arr dietlibc 12 12
source par_script.sh strcspn arr_arr 1arr_4arr 12 12

source par_script.sh strcspn arr_ls 1arr_1ls 12 12
source par_script.sh strcspn arr_ls 1arr_4ls 12 12

source par_script.sh strcspn arr_cls 1arr_4cls 12 12

source par_script.sh strcspn ls_arr 1ls_1arr 12 12
source par_script.sh strcspn ls_arr 1ls_4arr 12 12

source par_script.sh strcspn ls_ls 1ls_1ls 12 12
source par_script.sh strcspn ls_ls 1ls_4ls 12 12

source par_script.sh strcspn ls_cls 1ls_4cls 12 12

# strpbrk
source par_script.sh strpbrk arr_arr dietlibc 12 12
source par_script.sh strpbrk arr_arr 1arr_4arr 12 12

source par_script.sh strpbrk arr_ls 1arr_1ls 12 12
source par_script.sh strpbrk arr_ls 1arr_4ls 12 12

source par_script.sh strpbrk arr_cls 1arr_4cls 12 12

source par_script.sh strpbrk ls_arr 1ls_1arr 12 12
source par_script.sh strpbrk ls_arr 1ls_4arr 12 12

source par_script.sh strpbrk ls_ls 1ls_1ls 12 12
source par_script.sh strpbrk ls_ls 1ls_4ls 12 12

source par_script.sh strpbrk ls_cls 1ls_4cls 12 12

# vecdot
source par_script.sh vecdot arr 1arr 12 12
source par_script.sh vecdot arr 4arr 12 12

source par_script.sh vecdot ls 1ls 12 12
source par_script.sh vecdot ls 4ls 12 12

source par_script.sh vecdot cls 4cls 12 12

## 16 16 ##

# matfreq
source par_script.sh matfreq arr_arr 1arr_1arr 16 16
source par_script.sh matfreq arr_arr 1arr_4arr 16 16

source par_script.sh matfreq rmarr 1rmarr 16 16
source par_script.sh matfreq rmarr 4rmarr 16 16

source par_script.sh matfreq cmarr 1cmarr 16 16
source par_script.sh matfreq cmarr 4cmarr 16 16

source par_script.sh matfreq ls_arr 1ls_1arr 16 16
source par_script.sh matfreq ls_arr 1ls_4arr 16 16

source par_script.sh matfreq arr_ls 1arr_1ls 16 16
source par_script.sh matfreq arr_ls 1arr_4ls 16 16

source par_script.sh matfreq arr_cls 1arr_4cls 16 16