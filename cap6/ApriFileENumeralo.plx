#!/usr/bin/perl
use warnings;
use strict;
my $fil="";
my $lin=1;
print "Inserisci nome del file da aprire e numerare\n";
$fil=<STDIN>;
chomp($fil);
open FILE, "$fil", or die $!; 
while(<FILE>){
#Prima stampo il numero di linea e poi incremento
print $lin++;
print ": $_";
}
print "\n";
