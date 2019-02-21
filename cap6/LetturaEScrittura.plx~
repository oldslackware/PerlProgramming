#!/usr/bin/perl
#Per apprezzare il seguente programma lanciarlo almeno due volte
use warnings;
use strict;
my $count;
open(IN,"+<contatore") or die "Problema con il file contatore $!\n";
#Legge il numero dal file
$count=<IN>;
print "Sei il  visitatore numero $count.\n";
$count++;
#Adesso ritorno all'inizio del file
seek(IN,0,0) or die;
#Scrivo il nuovo valore di count nel file
print IN $count;
close(IN);
