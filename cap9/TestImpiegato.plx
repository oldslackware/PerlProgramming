#!/usr/bin/perl
use Impiegato;
use warnings;
use strict;
my $nome="";
my $telefonoint=0;
my $indirizzo="";
my $stipendiobase=0;
my $impiegato;
print "Inserisci nome impiegato:";
$nome=<STDIN>;
chomp $nome;
#print $nome,"\n";
print "Inserisci telefono interno impiegato:";
$telefonoint=<STDIN>;
chomp $telefonoint;
#print $telefonoint,"\n";
print "Inserisci indirizzo impiegato:";
$indirizzo=<STDIN>;
chomp $indirizzo;
#print $indirizzo,"\n";
print "Inserisci ora il suo stipendio di base:";
$stipendiobase=<STDIN>;
chomp $stipendiobase;
#print $stipendiobase,"\n";
#Adesso passo tutti i parametri ottenuti all'hash

$impiegato=Impiegato->new("Nome"=>$nome,
		          "Telefono"=>$telefonoint,
			  "Indirizzo"=>$indirizzo,
			  "Stipendio"=>$stipendiobase,
			   );

print "\nInfo about $nome:\n";
$impiegato->getDati;
	
