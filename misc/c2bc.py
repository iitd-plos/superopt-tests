#!/usr/bin/python3

import sys
import os


def is_version_check(args):
  for a in args:
    if a == "-v":
      return True
  return False

argv = sys.argv
llvm_bin_path = argv[1]
argv.pop(0)
argv.pop(0)

opt = ''

if not is_version_check(argv):
  opt = '-emit-llvm'

cmd = llvm_bin_path + "/clang " + opt + " " + (' '.join(argv))
print(cmd, flush=True)
os.system(cmd)
