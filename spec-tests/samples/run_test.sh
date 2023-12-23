#!/bin/sh

source run.sh
s2c_sample_run "$1"

echo -ne "$1\t\t"
tail -n2 tmpdir/"$1".eq.out | head -n1
