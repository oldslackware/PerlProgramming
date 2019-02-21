#!/usr/bin/perl
use warnings;
use strict;

my @mesi=qw(
		Gennaio-	Febbraio-	Marzo-	
		Aprile-		Maggio-		Giugno-	
		Luglio-		Agosto-		Settembre-		
		Ottobre-	Novembre-	Dicembre-
);
print "Mesi dell'anno e stipendi durante l'anno\n@mesi\n";

my @stipendio=qw(2000---- 3000----- 3500--- 2340---- 1980--- 2350---  1200---- 3750---- 2980---- 3290---- 2340---- 6530);
print "\n@stipendio\n"; 
print "Mesi e stipendi da febbraio a luglio\n";
print "@mesi[1 ..6]\n@stipendio[1 ..6]";
#swap
@mesi[0,1]=@mesi[1,0];
print "\nMesi dell'anno dopo lo swap\n@mesi\n";