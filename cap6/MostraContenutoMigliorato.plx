#!/usr/bin/perl
use warnings;
use strict;
die "$0 richiede almeno un argomento\n" if $#ARGV <0;
print "\n";	
while(<>){
	print "$.\t$_";#Il simbolo $. serve per farci stampare il numero di linea
	if(eof){
	print "-" x 30,"\n";#Alla fine di ogni singolo file mi faccio stampare 30 trattini per delimitarlo dal successivo
	close(ARGV);
}
}
print "\nAll done\n";
