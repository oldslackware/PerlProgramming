#!/usr/bin/perl 
use warnings;
use strict;
my $month=3;
my $second=0;
print "I miei mesi preferiti sono ";
print qw(
	Gennaio-	Febbraio-	Marzo-
	Aprile-		Maggio-		Giugno-	
	Luglio-		Agosto-		Settembre-
	Ottobre-	Novembre-	Dicembre-
)[$month,$second];
print "\n";