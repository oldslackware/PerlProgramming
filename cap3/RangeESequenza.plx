#!/usr/bin/perl
use warnings;
use strict;
print "Stampiamo il range da aprile a ottobre\n";
print(qw(
	Gennaio		Febbraio	Marzo	
	Aprile		Maggio		Giugno	
	Luglio		Agosto		Settembre		
	Ottobre		Novembre	Dicembre
)[3 .. 9]);
print "\nStampiamo il range [-4 .. 1] a partire dall'ultimo elemento\n";
print(qw(
	Gennaio		Febbraio	Marzo	
	Aprile		Maggio		Giugno	
	Luglio		Agosto		Settembre		
	Ottobre		Novembre	Dicembre
)[-4 .. 1]);
print "\nStampiamo l'elemento 0,il terzo e il range 6-11\n";
print(qw(
	Gennaio		Febbraio	Marzo	
	Aprile		Maggio		Giugno	
	Luglio		Agosto		Settembre		
	Ottobre		Novembre	Dicembre
)[0,3,6 .. 11]);
print "\n";