#!/usr/bin/perl
use warnings;
use strict;
print "Inserisci dei valori o delle stringhe una per ogni linea\n";
print "Premere ctr-d per terminare\n";
my @sortarray;
my @array;
@array=<STDIN>;
@sortarray=reverse (sort (@array));
print "\nArray ordinato in maniera decrescente\n";
print (@sortarray);
