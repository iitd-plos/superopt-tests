#!/bin/sh

source run.sh
s2c_benchmark_run "$1" "$2" "$3" "$4" "$5" "$6"

echo -ne "$7 ($1_$2_$3_$4_$5_$6)\t\t"
tail -n2 tmpdir/"$1_$2_$3_$4_$5_$6".eq.out | head -n1
