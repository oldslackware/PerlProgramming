#!/usr/bin/perl
use warnings;
use strict;
my $num=10;
my $punt=\$num;
print "Valore assegnato al puntatore: ",$punt,"\n";
print "Adesso se deferenziamo il puntatore otteniamo:",$$punt,"\n";
$$punt+=1;
print "Abbiamo aumentato il puntatore deferenziato che ora vale :",$$punt,"\n";
print "Come si vede il valore assegnato al puntatore è uguale al precedente: \n",$punt,"\n";
