#!/usr/bin/perl
use warnings;
use strict;
{
	package Genitori;#package vuoto
	
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
	Nonni->saluti();
	print "Ciao io sono $nome e sono un figlio\n";
	Genitori->saluti();
}
{
	package UNIVERSAL;#Se non trovo un metodo di una classe invoco UNIVERSAL
	sub AUTOLOAD{
		print "Il metodo saluto del package Genitori non esiste perciò invoco AUTOLOAD del package UNIVERSAL\n";
		print "Dentro il package UNIVERSAL invoco saluti del package Nonni\n";
		Nonni->saluti();
	}
}