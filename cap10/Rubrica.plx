#!/usr/bin/perl
use AnyDBM_File;#Lascio la scelta del dbm al sistema operativo che sceglie il migliore.
use warnings;
use strict;
my %rubrica;
my ($nome,$telefono);
my $retry;
dbmopen(%rubrica,"rubricadb",0666) or die "Errore generico sul db\n";
TRY:{
	print "Inserisci nome in rubrica\n";
	$nome=<STDIN>;
	chomp($nome);
	$nome=uc $nome;#Convertiamo il nome in maiuscolo
	print "Inserisci numero di telefono\n";
	$telefono=<STDIN>;
	
	#Assegniamo il tutto al dbm
	$rubrica{$nome}="\u$telefono";
	
	print "Devi inserire ancora un contatto:si/no:";
	$retry=<STDIN>;
	redo TRY if $retry =~/si|SI/;
}
dbmclose(%rubrica);
	