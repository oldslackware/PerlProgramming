#!/usr/bin/perl
use warnings;
use strict;
sleep(1);
my $parola="";
my $nuova="";
my $fil="";
print "Inserisci nome del file\n";
$fil=<STDIN>;
chomp($fil);
open FILE,$fil or die $!;
while(<FILE>){
foreach my $word(split){
print "$_";
}
}
print "Inserisci parola da sostituire\n";
$parola=<STDIN>;
chomp($parola); 
print "Inserisci parola sostituta\n";
$nuova=<STDIN>;
chomp($nuova);
print("\nNuovo file temporaneo in quanto non salviamo le modifiche\n\n");
open FILE,$fil or die $!;
while(<FILE>){

s/$parola/$nuova/;
foreach my $word(split){
print "$_";
}
}