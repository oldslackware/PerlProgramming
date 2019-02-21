#!/usr/bin/perl
use warnings;
use strict;

my @array1=qw(
		Gennaio-	Febbraio-	Marzo-	
		Aprile-		Maggio-		Giugno-	
		Luglio-		Agosto-		Settembre-		
		Ottobre-	Novembre-	Dicembre-
);
print "Mesi dell'anno\n@array1\n";


print "Stampiamo  aprile,il range da luglio a ottobre e Dicembre\n";
print @array1[3,6 ..9,11];
print "\n"
