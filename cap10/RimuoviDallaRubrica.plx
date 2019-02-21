#!/usr/bin/perl
use AnyDBM_File;
use warnings;
use strict;
my %rubrica;
my $nome;
my $retry;
dbmopen(%rubrica,"rubricadb",0666) or die "Errore generico sul db\n";
TRY:{
	print "Inserisci nome in rubrica da rimuovere\n";
	$nome=<STDIN>;
	chomp($nome);
	$nome=uc $nome;#Convertiamo il nome in maiuscolo
	
	#Assegniamo il tutto al dbm
	delete $rubrica{"$nome"};
	print "$nome rimosso.\n";
	
	print "Devi rimuovere ancora un contatto:si/no:";
	$retry=<STDIN>;
	redo TRY if $retry =~/si|SI/;
}
dbmclose(%rubrica);