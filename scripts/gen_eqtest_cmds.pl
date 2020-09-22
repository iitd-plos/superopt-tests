#!/usr/bin/perl -w

use strict;
use warnings;
use Cwd;

my $SUPEROPT_PROJECT_DIR = $ARGV[0];
my $VPATH = $ARGV[1];
my $dst_arch = $ARGV[2];
my $compiler_suffix = $ARGV[3];
my $srcdst_default_compiler_suffix = "gcc.eqchecker.O0.$dst_arch.s";

my $PWD = getcwd;

my %unroll;

my $cur;
foreach(my $i = 4; $i <= $#ARGV; $i++) {
  my $arg = $ARGV[$i];
  if ($arg eq "unroll1") {
    $cur = 1;
  } elsif ($arg eq "unroll2") {
    $cur = 2;
  } elsif ($arg eq "unroll4") {
    $cur = 4;
  } elsif ($arg eq "unroll8") {
    $cur = 8;
  } elsif (defined $cur) {
    $unroll{$arg} = $cur;
  } else {
    $unroll{$arg} = 1;
  }
}

foreach my $prog (keys %unroll) {
  my $u = $unroll{$prog};
  if ($compiler_suffix eq "srcdst") {
    print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $dst_arch $VPATH/$prog\_src.c $PWD/$prog\_dst.$srcdst_default_compiler_suffix.UNROLL$u\n";
  } else {
    print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $dst_arch $VPATH/$prog.c $PWD/$prog.$compiler_suffix.UNROLL$u\n";
  }
}
