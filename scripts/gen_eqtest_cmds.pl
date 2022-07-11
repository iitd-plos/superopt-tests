#!/usr/bin/perl -w

use strict;
use warnings;
use Cwd;

sub read_file {
  my $filename = $_[0];
  open my $fh, '<', $filename or return "";
  my $data = do { local $/; <$fh> };
  $data =~ tr{\n}{ };
  return $data;
}

#constants

my $SUPEROPT_PROJECT_DIR = $ARGV[0];
my $VPATH = $ARGV[1];
my $dst_arch = $ARGV[2];
my $compiler = convert_PP_to_plusplus($ARGV[3]);
my $compiler_suffix = convert_PP_to_plusplus($ARGV[4]);
#my $srcdst_default_compiler_suffix = "gcc.eqchecker.O0.$dst_arch.s";
#my $srcdst_default_isa = "x64";
#my $srcdst_default_isa = "i386";

#print "VPATH = $VPATH\n";
#print "dst_arch = $dst_arch\n";
#print "compiler_suffix = $compiler_suffix\n";

my $PWD = getcwd;

my $extraflagsarg = $ARGV[5];
#print "extraflagsarg = $extraflagsarg\n";
my @extraflags = split('@', $extraflagsarg);
shift(@extraflags);
my $extraflagsstr = join('',@extraflags);
#print "extraflagsstr = $extraflagsstr\n";

my %unroll;

my $cur;
foreach(my $i = 6; $i <= $#ARGV; $i++) {
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
  } elsif ($arg eq "unroll64") {
    $cur = 64;
  } elsif (defined $cur) {
    $unroll{$arg} = $cur;
  } else {
    $unroll{$arg} = 1;
  }
}

foreach my $prog (keys %unroll) {
  my $u = $unroll{$prog};
  my $prog_extraflagsstr = $extraflagsstr;
  if (-f "$VPATH/$prog.$compiler.pclsprels") {
    $prog_extraflagsstr = $prog_extraflagsstr . " --pc-local-sprel-assumes $VPATH/$prog.$compiler.pclsprels";
  }
  if (-f "$VPATH/$prog.$compiler.correl_hints") {
    $prog_extraflagsstr = $prog_extraflagsstr . " --correl-hints $VPATH/$prog.$compiler.correl_hints";
  }
  if (-f "$VPATH/$prog.$compiler.eqflags") {
    $prog_extraflagsstr = $prog_extraflagsstr . " " . read_file("$VPATH/$prog.$compiler.eqflags");
  }
  if ($compiler eq "srcdst") {
    #print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $dst_arch $VPATH/$prog\_src.c $PWD/$prog\_dst.$srcdst_default_compiler_suffix.UNROLL$u\n";
    #print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $srcdst_default_isa -extra_flags=$extraflagsstr $VPATH/$prog\_src.c $VPATH/$prog\_dst.c.UNROLL$u\n";
    my $src_pathname = identify_filetype_extension("$VPATH/$prog\_src");
    my $dst_pathname = identify_filetype_extension("$VPATH/$prog\_dst");
    print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $dst_arch -extra_flags='$prog_extraflagsstr' -tmpdir $PWD $src_pathname $dst_pathname.UNROLL$u\n";
  } else {
    #print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $dst_arch -extra_flags=$extraflagsstr $VPATH/$prog.c $PWD/$prog.$compiler_suffix.UNROLL$u\n";
    my $compile_log_str = "";
    if ($compiler =~ /^clang/) {
      $compile_log_str = "-compile_log $PWD/$prog.$compiler$compiler_suffix.log"
    }
    my $src_pathname = identify_filetype_extension("$VPATH/$prog");
    print "python $SUPEROPT_PROJECT_DIR/superopt/utils/eqbin.py -isa $dst_arch -extra_flags='$prog_extraflagsstr' -tmpdir $PWD $src_pathname $PWD/$prog.$compiler$compiler_suffix.UNROLL$u $compile_log_str\n";
  }
}

sub identify_filetype_extension
{
  my $path = shift;
  my $cpath = "$path.c";
  my $llpath = "$path.ll";
  if (-e $cpath) {
    return $cpath;
  }
  if (-e $llpath) {
    return $llpath;
  }
  print "Neither C file ($cpath) nor LLVM file ($llpath) exists\n";
  exit(1);
}

sub convert_PP_to_plusplus
{
  my $in = shift;
  $in =~ s/PP/++/g;
  return $in;
}
