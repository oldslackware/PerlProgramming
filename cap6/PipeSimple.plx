#!/usr/bin/perl
use warnings;
use strict;
print "Inserisci delle parole separati da spazio,poi premere invio\n";
print "Infine  ctrl-d per terminare\n";
my @array=<STDIN>;
open(PIPE,"| wc -w");
#Nella linea successiva invio tramite flusso d'uscita PIPE l'array al comando wc -w di UNIX che ha il compito di contare le parole e stampare il risultato.
print PIPE "@array";
close(PIPE);
