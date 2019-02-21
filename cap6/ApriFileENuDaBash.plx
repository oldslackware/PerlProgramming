#!/usr/bin/perl
use warnings;
use strict;
my $linea=1;
#finchè non esaurisco la risorsa da input
while(<>){
#prima stampo la linea e poi incremento
print $linea++;
print ": $_";
}
print "\n"; 
