#!/usr/bin/perl
use warnings;
use strict;
my $line=0;
my @range; 
print "Inserisci il numero  di linea da visualizzare a partire dalla fine\n";
$line=<STDIN>;
chomp($line);
while(<>){
push @range,$_;
shift @range if @range>$line;
}
print "\n @range\n";
