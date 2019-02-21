#!/usr/bin/perl
use FordFiesta;
use warnings;
use strict;
my %car;
tie %car,"FordFiesta","1.2 Plus","Viola",9800;
print '~' x 40,"\n";
print "Il modello in offerta della fiesta è ",$car{Modello},"\n";
print "Il colore originale della fiesta è ",$car{Colore},"\n";
print "Il prezzo in offerta è ",$car{Prezzo}," euro\n";
print '~' x 40,"\n";
$car{Colore}="Giallo";
print "Il colore richiesto dal cliente della fiesta è ",$car{Colore},"\n";
$car{Modello}="1.2 Titanium Plus";
print "Il modello richiesto della fiesta è ",$car{Modello},"\n";
$car{Prezzo}=12900;
print "Con i settaggi del cliente la macchina risulta avere un costo di ",$car{Prezzo}," euro\n";
print '~' x 40,"\n";