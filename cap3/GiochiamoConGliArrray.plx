#!/usr/bin/perl
use warnings;
use strict;
my @linguaggi=qw(Java C C++ Perl Ruby);
my @conoscenza=("Ne ho le palle piene","Linguaggio stupendo che amo","Conoscenza ottime","In Lavorazione","Da Approffondire");
print "Inserisci un numero compreso tra 1-5\n";
my $scelta=<STDIN>;
#Diminuisco la scelta per essere conformi con gli indici
$scelta -=1;
print "Quanto conosco $linguaggi[$scelta]","?\n";
print "Sto elaborando\n";
#Pausa di 5 secondi
sleep(5);
print "Risposta:\n$conoscenza[$scelta] \n";

