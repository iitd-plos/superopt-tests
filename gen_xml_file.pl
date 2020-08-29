#!/usr/bin/perl -w
use warnings;
use strict;
#use URI::Escape;
#use Compress::LZW;

use Cwd qw(cwd);

my $curdir = cwd;

#my $clang_O3_suffix = 'clang.eqchecker.O3.i386.s';
my $source_prog = $ARGV[0];
my $destination_prog = $ARGV[1];

my $src_path = $curdir;
$src_path =~ s/build\///;

my $data = "<eqchecker_preload>";
$data .= "<source>\n";
my $filename = add_included_code($src_path, $source_prog);
open my $c_file, "<$filename" or die $!;
my @c_code_arr = <$c_file>;
close $c_file;
my $c_code = remove_empty_lines(@c_code_arr);
#my $c_code_encoded = uri_escape($c_code);
my $c_code_encoded = xml_escape($c_code);
#print "C file:\n$c_code_encoded\n";
$data .= $c_code_encoded;
$data .= "</source>";

open my $clang_s_file, "<$destination_prog" or die $!;
my @clang_s_code_arr = <$clang_s_file>;
close $clang_s_file;
my $clang_s_code = asm_cleanup(@clang_s_code_arr);
#my $clang_s_code_encoded = uri_escape($clang_s_code);
my $clang_s_code_encoded = xml_escape($clang_s_code);
$data .= "<destination>\n#The assembly program must follow the cdecl calling conventions\n$clang_s_code_encoded</destination>";
#$data .= "<unroll>8</unroll>";
$data .= "</eqchecker_preload>";
#print "Clang O3 file:\n$clang_s_code_encoded\n";
#my $cmd = "wget --post-data \'$post_data\' http://jal/eqcheck";
#my $url = "http://jal/eqcheck?$post_data";
#print "$url\n";
#open(my $xml, ">$prog.xml");
#print $xml "$data";
print "$data";
#close($xml);

sub add_included_code {
  my $src_path = shift;
  my $c_prog = shift;
  my $ofilename = "$c_prog.expanded";

  open (my $file, "<$c_prog") or die $!;
  open (my $ofp, ">$ofilename") or die $!;
  while (my $line = <$file>) {
    if ($line =~ /^#include\s+[\"<](.*)[\">]\s*$/) {
      my $h_file = $1;
      if (header_file_needs_to_be_expanded($h_file)) {
        open(my $fp, "<$src_path/$h_file");
        while (my $hline = <$fp>) {
	  print $ofp $hline;
        }
        close($fp);
	next;
      }
    }
    print $ofp "$line\n";
  }
  close($file);
  close($ofp);
  return $ofilename;
}

sub header_file_needs_to_be_expanded {
  my $h_name = shift;
  if ($h_name =~ /globals.h/) {
    return 1;
  }
  return 0;
}

sub xml_escape {
  my $data = shift;
  $data =~ s/&/&amp;/sg;
  $data =~ s/</&lt;/sg;
  $data =~ s/>/&gt;/sg;
  $data =~ s/"/&quot;/sg;
  return $data;
}

sub remove_empty_lines {
  my $ret = '';
  while (my $line = shift) {
    if ($line =~ /^\s*$/) {
      next;
    }
    $ret .= $line;
  }
  return $ret;
}

sub asm_cleanup {
  my $ret = '';
  while (my $line = shift) {
    if ($line =~ /^\s*$/) {
      next;
    }
    if ($line =~ /^\s*\.file/) {
      next;
    }
    if ($line =~ /^\s*\.loc/) {
      next;
    }
    if ($line =~ /^\s*\.cfi/) {
      next;
    }
    if ($line =~ /^\s*#/) {
      next;
    }
    if ($line =~ /^\s*\.p2align/) {
      next;
    }
    if ($line =~ /^\s*\.Ltext/) { #gcc
      next;
    }
    #if ($line =~ /^\s*\.LF/) { #gcc
    #  next;
    #}
    #if ($line =~ /^\s*\.LB/) { #gcc
    #  next;
    #}
    if ($line =~ /^\s*\.LVL/) { #gcc
      next;
    }
    if ($line =~ /^\s*\.Let/) { #gcc
      next;
    }
    if ($line =~ /^\s*\.Ltmp/) {
      next;
    }
    if ($line =~ /^\s*\.L.*local:/) {
      next;
    }
    if ($line =~ /^\s*\.Lfunc/) {
      next;
    }
    if ($line =~ /^\s*\.size/) {
      next;
    }
    if ($line =~ /^\s*\.section.*debug/) {
      last;
    }
    $ret .= $line;
  }
  return $ret;
}
