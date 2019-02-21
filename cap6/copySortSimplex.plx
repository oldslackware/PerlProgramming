#!/usr/bin/perl
use warnings;
use strict;
my $dacopiare=shift @ARGV;
my $copia=shift @ARGV;
open IN,$dacopiare or die "$!\n";
open OUT,">$copia" or die "$!\n";
while(<IN>){
my @sortfile=<IN>;
@sortfile=sort @sortfile;
print OUT @sortfile;
}
print "Tutto ok\n";
 
