#!/usr/bin/perl
use warnings;
use strict;

my @array1=(2,4,6,8,10,12);
print "Stampa array\n@array1\n";
#Per accedere all'elemento su usano i subscript
#Se avessi  messo -1 avrei perso l'ultimo elemento con -2 il penultimo ecc
my $subscript=4;
#Mi stampo il quarto elemento
print "array1[4]=",$array1[$subscript], "\n";
#Adesso modifico il quarto elemento
print "Sostituisco array1[4] impostandolo a 99\n";
$array1[$subscript]=99;
#E adesso ristampiamo per vedere se è cambiato
print "Nuovo array \n@array1\n";
print "array1[4]=",$array1[$subscript], "\n";