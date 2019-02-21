#!/usr/bin/perl
use warnings;
my ($dist,$km,$miglia);
print "Inserisci distanza\n";
$dist=<STDIN>;
chomp($dist);
$km=$dist*1.609;
$miglia=$dist*0.6214;
print "$dist miglia equivalgono a $km km\n";
print "$dist km equivalgono a $miglia  miglia\n";
