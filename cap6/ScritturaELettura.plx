#!/usr/bin/perl
#Per apprezzare il seguente programma notare che prima scrivo sul file e poi leggo.
use warnings;
use strict;
open(IN,"+>scritto") or die "Problema con il file contatore $!\n";
print IN "Questa linea � stata scritta dal programma e in seguito lo stesso la legger�.\n";
#Adesso ritorno all'inizio del file
seek(IN,0,0) or die;
#Leggo il  contenuto del file
while(<IN>){
print;
}
close(IN);
