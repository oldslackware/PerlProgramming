#!/usr/bin/perl 
use warnings;
no strict;
my $nome="Carlo Rossi";
#Una chiusura è una subroutinr anonima che ha accesso sempre alle variabili my locali
#Ovviamenete una chiusura deve essere invocata fuori dal blocco
{
	my $nome="Mario Verdi";
	#Subroutine ANONIMA	
	$ref=sub{ return "Dentro la chiusura mi chiamo $nome\n";}
}
print "Fuori dalla chiusura mi chiamo $nome\n";
#Invoco la subroutine anonima dentro il blocco
print &{$ref};