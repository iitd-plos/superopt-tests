#!/usr/bin/perl -w

use strict;
use warnings;
use Cwd;

#constants

my $SUPEROPT_PROJECT_DIR = $ARGV[0];
my $VPATH = $ARGV[1];
my $dst_arch = $ARGV[2];
my $compiler_suffix = $ARGV[3];
#my $srcdst_default_compiler_suffix = "gcc.eqchecker.O0.$dst_arch.s";
#my $srcdst_default_isa = "x64";
#my $srcdst_default_isa = "i386";

#print "VPATH = $VPATH\n";
#print "dst_arch = $dst_arch\n";
#print "compiler_suffix = $compiler_suffix\n";

my $PWD = getcwd;

my $extraflagsarg = $ARGV[4];
my @extraflags = split('@', $extraflagsarg);
shift(@extraflags);
my $extraflagsstr = join('',@extraflags);

my %unroll;

my $cur;
foreach(my $i = 5; $i <= $#ARGV; $i++) {
  my $arg = $ARGV[$i];
  #print "arg = $arg\n";
  if ($arg eq "unroll1") {
    $cur = 1;
  } elsif ($arg eq "unroll2") {
    $cur = 2;
  } elsif ($arg eq "unroll4") {
    $cur = 4;
  } elsif ($arg eq "unroll8") {
    $cur = 8;
  } elsif ($arg eq "unroll16") {
    $cur = 16;
  } elsif ($arg eq "unroll32") {
    $cur = 32;
  } elsif (defined $cur) {
    $unroll{$arg} = $cur;
  } else {
    $unroll{$arg} = 1;
  }
}

foreach my $prog (keys %unroll) {
  my $u = $unroll{$prog};
  if ($compiler_suffix eq "srcdst") {
    #print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $dst_arch $VPATH/$prog\_src.c $PWD/$prog\_dst.$srcdst_default_compiler_suffix.UNROLL$u\n";
    #print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $srcdst_default_isa -extra_flags=$extraflagsstr $VPATH/$prog\_src.c $VPATH/$prog\_dst.c.UNROLL$u\n";
    print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $dst_arch -extra_flags=$extraflagsstr -tmpdir $PWD $VPATH/$prog\_src.c $VPATH/$prog\_dst.c.UNROLL$u\n";
  } else {
    #print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $dst_arch -extra_flags=$extraflagsstr $VPATH/$prog.c $PWD/$prog.$compiler_suffix.UNROLL$u\n";
    print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $dst_arch -extra_flags=$extraflagsstr -tmpdir $PWD $VPATH/$prog.c $PWD/$prog.$compiler_suffix.UNROLL$u\n";
  }
}
