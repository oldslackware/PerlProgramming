#!/usr/bin/perl
use warnings;
use strict;
my $fil=shift @ARGV;
my $parola="";
my $line;
print "Inserisci parola\n";
$parola=<STDIN>;
chomp($parola);
open(IN,$fil) or die "Non posso accedere al file $!\n";
while($line=<IN>){
	if($line =~/$parola/){
		sleep(1);
		print "Ricerca su tutto il file\n";
		sleep(3);
		print "$parola trovata\n";
	}
}
	#Adesso parto dall'inizio del file
	print "Ricerca a partire dall'inizio del file\n";
	sleep(2);
	seek(IN,0,0);
	#seek(IN,0,1);Questo inizia la ricerca a partire dal punto in cui avevo trovato la $parola di sopra.
	while(<IN>){
	print if /$parola/;
	
}
