#!/usr/bin/perl
use warnings;
use strict;
{
	package Genitori;#package vuoto
	use vars qw(@ISA);
	@ISA=qw(Nonni);#Nonno è un package contenuto nell'array ISA
}
{
	package Nonni;
	my $nome="Mario Rossi";
	sub saluti{
		print "Ciao $Figlio::nome io sono $nome e sono tuo nonno.\n";
	} 
}
{
	package Figlio;
	our $nome="Mario Rossi Junior";
	print "Ciao io sono $nome e sono un figlio\n";
	Genitori->saluti();
}
