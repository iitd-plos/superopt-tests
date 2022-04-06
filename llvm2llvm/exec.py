import os
import subprocess
from pathlib import Path
import sys

cwd = Path('./').absolute()
test_dir = [name for name in os.listdir(cwd) if os.path.isdir(os.path.join(cwd, name))]
test_dir.sort()

def exec(test):
    test_dir_path = cwd / test
    print(f"Testcase '{test}':")
    os.chdir(test_dir_path)
    for x in range(3):
        extra_str = '(Unbounded Cardinality)' if x == 0 else ''
        print(f"\t \u2ba1 Checking src -> dst with Cardinality {x} {extra_str} (Output Log: {test + f'/out_src_dst_{x}.log'})")
        subprocess.run([f"eq32 --relocatable-memlabels-and-safety -f main src.ll dst.ll --set-cardinality={x} --disable-mlasserts --dyn_debug=prove_using_local_sprel_expr_guesses_dump,decide_hoare_triple_debug=2 > out_src_dst_{x}.log 2>&1"], shell=True)
        print(f"\t \u2ba1 Checking dst -> src with Cardinality {x} {extra_str} (Output Log: {test + f'/out_dst_src_{x}.log'})")
        subprocess.run([f"eq32 --relocatable-memlabels-and-safety -f main dst.ll src.ll --set-cardinality={x} --disable-mlasserts --dyn_debug=prove_using_local_sprel_expr_guesses_dump,decide_hoare_triple_debug=2 > out_dst_src_{x}.log 2>&1"], shell=True)
    print()

#########################################################

if(len(sys.argv) == 1):
    print("1) To check all testcases, execute `python3 exec.py all`\n2) To check specific testcases, eg. test1 and test2, execute `python3 exec.py test1 test2`")
else:
    if(sys.argv[1] == 'all'):
        print(f"To test: {test_dir}")
        for test in test_dir:
            exec(test)
    else:
        print(f"To test: {sys.argv[1:]}")
        for x in sys.argv[1:]:
            exec(x)
