#!/usr/bin/perl
use warnings;
use strict;
my $dacopiare=shift @ARGV;
my $copia=shift @ARGV;
my $parola="";
open IN,$dacopiare or die "$!\n";
open OUT,">$copia" or die "$!\n";
print "Digita parola\n";
$parola=<STDIN>;
while(<IN>){
print OUT if !/$parola/;

}

print "Tutto ok\n"; 
