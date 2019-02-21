#!/usr/bin/perl
use warnings;
use strict;
my $string="uomo bello uomo ricco uomo semplice uomo povero uomo sexy";
print "Stringa partenza\n$string\n";
my @aggettivo=($string=~ /(\w+)\s+uomo\b/gi);
my $aggett =$aggettivo[2];
print "Il terzo uomo è $aggett.\n";
my $ultimo=($string=~ /(\w+)\s+uomo\b/gi)[-1];
print "Il penultimo uomo è $ultimo.\n";
$ultimo=($string=~ /(\w+)\b/gi)[-1];
print "L'ultimo uomo è $ultimo.\n";
