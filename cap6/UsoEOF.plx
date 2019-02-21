#!/usr/bin/perl
use warnings;
use strict;
#Stampo tutto,fino alla fine del file, a partire dalla parola passata da riga di comando.
if($#ARGV <1){
	print "Uso perl UsoEOF.plx <paroladacercare> <file>\n";
	die "Usare almeno due  argomenti\n";
}
my $parola=shift @ARGV;
my $apri=shift @ARGV;
#print "$parola\n";
open IN,$apri or die "Non posso aprire il file:$!\n";
while(<IN>){
	print if(/$parola/ .. eof);
}
close(IN);
