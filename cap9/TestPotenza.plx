#!/usr/bin/perl
use Potenza;
use warnings;
use strict;
my $potenza;
my $object=tie $potenza,'Potenza',3;
print "object vale 3 ed è di tipo $object \n";
print "$potenza\n";
print "$potenza\n";
print "$potenza\n";
print 'x' x 10,"\n";
$potenza=4;
print "object vale 4 ed è di tipo $object \n";
print "$potenza\n";
print "$potenza\n";
print "$potenza\n";
print 'x' x 10,"\n";
untie $potenza;#Provo a c ancellare il riferimento a potenza