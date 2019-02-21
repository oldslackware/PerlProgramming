#!/usr/bin/perl
use warnings;
use strict;
my $parola="";
my $apri=shift @ARGV;
open IN,$apri or die "Non posso aprire il file:$!\n";
print "Inserisci parola da ricercare\n";
$parola=<STDIN>;
chomp($parola);
sleep(3);
print"\n\t\t-----Risultato\n";
while(<IN>){
	print if/^$parola/;
}
close(IN);
