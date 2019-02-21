#!/usr/bin/perl
use warnings;
use strict;
{
	package Genitori;#package vuoto
	sub AUTOLOAD{#Questo metodo viene invocato quando viene invocato un metodo che non esiste.
		print "$_[0]:$_[1] e $_[2]\n";#[0]nome della classe
		print "Sbaglio o senza di noi non saresti niente?\n";
		print "Questo metodo è un metodo di default, invocato del package $_[0]\n";
	}
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
	Genitori->dimmichisono("Mamma","Papà");
}
