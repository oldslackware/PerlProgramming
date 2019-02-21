#!/usr/bin/perl
use warnings;
#Usiamo to statement strict per dichiarare che usiamo le nostre variabili locali e globali
#Omettere lo statement strict comporta cercare un esplicito package 
#Le variabili globali a differenza delle lessicali sono dichiarate antemponendo our
use strict;

our $variabile=5;
print 'Abbiamo salvato $variabile che è di tipo globale con valore ',$variabile,"\n";
{
my $variabile=32;
print 'Dentro il blocco $variabile vale ',$variabile,"\n";
}
print "Fuori dal blocco richiamamo la variabile globale con valore ",$variabile,"\n";

 
