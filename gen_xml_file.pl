#!/usr/bin/perl -w
use warnings;
use strict;
use URI::Escape;
use Compress::LZW;

use Cwd qw(cwd);

my $curdir = cwd;

my $clang_O3_suffix = 'clang.eqchecker.O3.i386.s';
my @progs;

my $src_path = $curdir;
$src_path =~ s/build\///;

for (my $i = 0; $i <= $#ARGV; $i++) {
  push(@progs, $ARGV[$i]);
}

foreach my $prog (@progs) {
  my $data = "<eqchecker_preload>";
  $data .= "<source>";
  my $filename = add_included_code($src_path, "$prog.c");
  open my $c_file, "<$filename" or die $!;
  my @c_code_arr = <$c_file>;
  close $c_file;
  my $c_code = "@c_code_arr";
  #my $c_code_encoded = uri_escape($c_code);
  my $c_code_encoded = xml_escape($c_code);
  #print "C file:\n$c_code_encoded\n";
  $data .= $c_code_encoded;
  $data .= "</source>";

  open my $clang_s_file, "<$prog.$clang_O3_suffix" or die $!;
  my @clang_s_code_arr = <$clang_s_file>;
  close $clang_s_file;
  my $clang_s_code = "@clang_s_code_arr";
  #my $clang_s_code_encoded = uri_escape($clang_s_code);
  my $clang_s_code_encoded = xml_escape($clang_s_code);
  $data .= "<destination>$clang_s_code_encoded</destination>";
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
}

sub add_included_code {
  my $src_path = shift;
  my $c_prog = shift;
  my $ofilename = "$c_prog.expanded";

  open (my $file, "<$src_path/$c_prog") or die $!;
  open (my $ofp, ">$ofilename") or die $!;
  while (my $line = <$file>) {
    if ($line =~ /^#include\s+[\"<](.*)[\">]\s*$/) {
      my $h_file = $1;
      if (header_file_needs_to_be_expanded($h_file)) {
        open(my $fp, "<$src_path/$h_file");
        my @h_code_arr = <$fp>;
	print $ofp "@h_code_arr";
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
