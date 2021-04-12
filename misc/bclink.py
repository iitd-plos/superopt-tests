#!/usr/bin/python3

import sys
import os


def remove_flags(inlist):
  outlist = []
  expectingOutputFile = False
  outputFile = ''
  for e in inlist:
    if not e.startswith("-") or e == "-o":
      outlist.append(e)
    if expectingOutputFile:
      outputFile = e
    if (e == "-o"):
      expectingOutputFile = True
    else:
      expectingOutputFile = False
  return (outlist, outputFile)

argv = sys.argv
llvm_bin_path = argv[1]
argv.pop(0)
argv.pop(0)

(argv, outputFile) = remove_flags(argv)

cmd = llvm_bin_path + "/llvm-link " + (' '.join(argv));
print(cmd, flush=True)
os.system(cmd)
cmd = "chmod +x " + outputFile
print(cmd, flush=True)
print("outputFile = ", outputFile)
os.system(cmd)
