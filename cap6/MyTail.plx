#!/usr/bin/perl
use warnings;
use strict;
my $fil="";
my $line=0;
my @range;
print "Inserisci file\n";
$fil=<STDIN>;
chomp($fil);
open FILE,"$fil",or die $!;
print "Inserisci il numero  di linea da visualizzare a partire dalla fine\n";
$line=<STDIN>;
chomp($line);
while(<FILE>){
push @range, $_;
shift @range if @range>$line;
}
print "Le ultime $line linee sono\n @range\n";
