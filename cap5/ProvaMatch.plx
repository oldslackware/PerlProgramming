#!/usr/bin/perl
use warnings;
use strict;
my $parola;
my $newparola;
my $stringam="I cani odiano i gatti e questi odiano i topi ma tutti odiano i serpenti";
print("\n$stringam");
print "\nInserisci parola da cancellare\n";
$parola=<STDIN>;
chomp($parola);

print "Inserisci parola da sostiuire a $parola\n";
$newparola=<STDIN>;
chomp($newparola);
while($stringam =~ / $parola/){
$stringam=~ s/$parola/$newparola/; 
}
print("\n$stringam\n");
 
