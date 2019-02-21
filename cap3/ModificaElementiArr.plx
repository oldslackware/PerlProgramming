#!/usr/bin/perl
use warnings;
use strict;
my @array=qw(10 20 30 40 50);
print "Situazione iniziale\n@array\n";
for(@array) {
#$_ è una speciale variabile di Perl con un valore di default
$_ *=10
}
print "Moltiplichiamo ogni elemento per 10\n@array\n"; 
