#!/usr/bin/perl
use warnings;
use strict;
#Ordinamento array di strighe
my @noordSt=("Lombardia","Sardegna","Calabria","Sicilia","Basilicata","Lazio","Toscana");
print "Array di stringhe disordinato\n@noordSt\n";
my @ordSt=sort @noordSt; 
print "Array di stringhe ordinato\n@ordSt\n";
#Ordinamento array di interi
my @noordInt=(20,13,9,14,3,31,29,7,2,16);
print "Array di interi disordinato\n@noordInt\n";
#Ordiniamo l'array in base alle stringhe
my @ordIntSt=sort{$a cmp $b}@noordInt;
print "Array ordinato in base alle stringhe\n@ordIntSt\n";

#Non possiamo usare la tecnica precedente
my @ordInt=sort {$a<=>$b} @noordInt;
print "Array di interi ordinato\n@ordInt\n";

