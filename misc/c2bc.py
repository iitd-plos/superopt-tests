#!/usr/bin/python3

import sys
import os


def is_version_check(args):
  for a in args:
    if a == "-v":
      return True
  return False

def get_output_filename(args):
  ret = "a.out"
  next_is_output_filename = False
  for a in args:
    if next_is_output_filename:
      ret = a
    if a == "-o":
      next_is_output_filename = True
    else:
      next_is_output_filename = False
  return ret

argv = sys.argv
llvm_bin_path = argv[1]
argv.pop(0)
argv.pop(0)

cmdline_opts = ''
mv_cmd = ''
opt_cmd = ''

if not is_version_check(argv):
  output_filename = get_output_filename(argv)
  cmdline_opts = '-Xclang -disable-O0-optnone -Xclang -disable-llvm-passes -emit-llvm'
  mv_cmd  = "/bin/mv " + output_filename + " " + output_filename + ".tmp"
  opt_cmd = llvm_bin_path + "/opt -mem2reg -die -o " + output_filename + " " + output_filename + ".tmp"

cmd = llvm_bin_path + "/clang " + cmdline_opts + " " + (' '.join(argv))
print(cmd, flush=True)
os.system(cmd)

if mv_cmd != '':
  print(mv_cmd, flush=True)
  os.system(mv_cmd)

if opt_cmd != '':
  print(opt_cmd, flush=True)
  os.system(opt_cmd)
