#!/usr/bin/perl
use warnings;
use strict;
my @array=(1,10,2,20,3,30,4,40);
print "Array iniziale @array\n";
print "Invertiamo l'array\n";
my $ind=1;
for(reverse(@array)){
sleep (2);
print "Elemento $ind=$_\n";
$ind++;
}
