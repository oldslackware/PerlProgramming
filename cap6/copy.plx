#!/usr/bin/perl
use warnings;
use strict;
my $dacopiare=shift @ARGV; 
my $copia=shift @ARGV;
open IN,$dacopiare or die "$!\n";
open OUT,">$copia" or die "$!\n";
print "Copia di $dacopiare in $copia\n";
while(<IN>){
print OUT $_;
}
print "Tutto ok\n";

