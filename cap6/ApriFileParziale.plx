#!/usr/bin/perl
use warnings;
use strict;
my $parola="";
my $apri=shift @ARGV;
open IN,$apri or  die "Non posso aprire il file: $!\n";
print "Inserisci parola da stampare\n";
$parola=<STDIN>;
chomp($parola);
sleep(2);
print "\n\t\tRisultato\n";
while(<IN>){
	print if /$parola/;
}
close(IN);
