#!/usr/bin/perl
use warnings;
use strict;

my @linguaggi=qw(Java C C++ Perl Ruby);
my @conoscenza=("Ne ho le palle piene","Linguaggio stupendo che amo","Conoscenza ottime","In Lavorazione","Da Approffondire");

#L'estremo @linguaggi-1 rappresenta l'ultimo indice dell'array ovvero l'ultimo elemento
for(0 .. @linguaggi-1){
print "Vuoi sapere quanto conosco $linguaggi[$_]";
print "?\nSto elaborando\n";
sleep (3);
print $conoscenza[$_],"\n\n";
sleep (5);
}
