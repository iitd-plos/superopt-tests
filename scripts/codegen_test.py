import multiprocessing
import sys
import os
import time
import argparse
from subprocess import check_call, STDOUT

parser = argparse.ArgumentParser(description='Generate codegen test commands.')

parser.add_argument('--superopt_root', type=str, default='/home/sbansal/superopt-project',
                   help='Superopt root directory')
parser.add_argument('--prefix', type=str, default='',
                   help='Prefix directory for the files to be read/written')
parser.add_argument('progs', nargs='*', default=[], help='List of program names')

args = parser.parse_args()

#execfile("../smpbench-build/config.py")
#superopt_root = os.path.abspath(srcdir + "/../superopt-project")
superopt_root = os.path.abspath(args.superopt_root)
superopt_dir = os.path.abspath(superopt_root + "/superopt")
superopt_tests_dir = os.path.abspath(superopt_root + "/superopt-tests")
superopt_tests_build = os.path.abspath(superopt_tests_dir + "/build")
prefix = args.prefix
lli = "lli-3.4"
llvm2tfg_build_dir = os.path.abspath(superopt_root + "/llvm-project/build")

color_red="`tput bold; tput setaf 1`"
color_green="`tput bold; tput setaf 2`"
color_reset="`tput sgr0`"
#opts = ["O0", "O3"]
#compilers = ["gcc", "clang", "llc", "icc"]
opts = ["O3"]
compilers = ["llc"]

#num_cpus = multiprocessing.cpu_count()
cint_progs = []
cint_profile_commands = {}

#for arg in sys.argv:
for arg in args.progs:
  cint_progs.append(arg)
#cint_progs.pop(0)

#print("num_cpus = ", num_cpus)
for cp in cint_progs:
  name = os.path.basename(cp)
  cint_prog = os.path.abspath(superopt_tests_build + "/" + prefix + "/" + cp)
  #print(cint_prog)
  cmd = "/bin/true && (/bin/true"
  for opt in opts:
    cmd = cmd + " && ("
    cmd = cmd + llvm2tfg_build_dir + "/bin/llvm2tfg " + cint_prog + ".bc." + opt + ".cg -o " + cint_prog + ".bc." + opt + ".cg.etfg";
    cmd = cmd + " && " + "rm -f " + cint_prog + ".bc." + opt + ".cg.i386";
    cmd = cmd + " && " + superopt_dir + "/build/etfg_i386/codegen " + cint_prog + ".bc." + opt + ".cg.etfg -o " + cint_prog + ".bc." + opt + ".cg.i386" + " -l " + cint_prog + ".bc." + opt + ".cg.rewrite.log";
    cmd = cmd + ")"
  cmd = cmd + ")"
  cmd = cmd + " && " + "(perl " + superopt_tests_dir + "/scripts/compare_commands.pl " + name
  ccmd = ""
  cint_profile_commands[cp] = []
  for c in compilers:
    for opt in opts:
      ccmdo = "\"" + cint_prog + "." + c + "." + opt + ".i386\""
      ccmd = ccmd + " " + ccmdo
      cint_profile_commands[cp].append((c,opt,ccmdo))
  for opt in opts:
    ccmdo = "\"" + cint_prog + ".bc." + opt + ".cg.i386\""
    ccmd = ccmd + " " + ccmdo
    cint_profile_commands[cp].append(("scg",opt,ccmdo))
  ccmd = ccmd + " \"\""
  cmd = cmd + ccmd + " && echo \"" + cint_prog  + " " + color_green + "passed" + color_reset + "\") || echo \"" + cint_prog + " " + color_red + "FAILED" + color_reset + "\""
  print cmd + "\n"

#DEVNULL = open(os.devnull, 'wb', 0)
profile_cmds = open("profile_cmds", 'w+')
for cp,commands in cint_profile_commands.items():
  profile_cmds.write(cp + "\n")
  for c,opt,command in commands:
    profile_cmds.write("  " + c + " : " + opt + " : " + command + "\n")
  #start = time.time()
  #check_call([command], stdout=DEVNULL, stderr=STDOUT)
  #print(command + ": ")
  #print("{:.3f} seconds".format(time.time() - start))
profile_cmds.close()
