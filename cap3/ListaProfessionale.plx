#!/usr/bin/perl
use warnings;
use strict;
my $mese=3;
#Se avessi messo 3.4 il risultato sarebbe stato identico in quan to Perl  arrotonda per difetto.
#Con qw possiamo impostare gli spazi e i tab per facilitare la scrittura del codice
print "Il mio mese preferito è ";
print qw(
	Gennaio		Febbraio	Marzo	
	Aprile		Maggio		Giugno	
	Luglio		Agosto		Settembre		
	Ottobre		Novembre	Dicembre
)[$mese];
#Mi prendo solo Aprile
print "\n";
 
