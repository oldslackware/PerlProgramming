#!/usr/bin/perl
use warnings;
use strict;

my @array1;
my $l1;

@array1=qw(Parigi Roma Los-Angeles Miami Londra Pechino Sidney);
$l1=@array1;

print "Il primo array � \n@array1 \ned � di lunghezza $l1\n";

my @array2;
my $l2;

@array2=qw(Europa Nord-America Africa SudAmerica Australia Asia);
$l2=@array2;
print "Il secondo array � \n@array2 \ned � di lunghezza $l2\n";