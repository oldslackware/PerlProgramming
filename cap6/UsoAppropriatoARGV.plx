#!/usr/bin/perl
use warnings;
use strict;
die "$0 richiede almeno un argommento.\n" if $#ARGV <0;
#Stampiamo tutti gli argomenti
print "@ARGV\n";
print "Il primo argomento è ";
print "$ARGV[0]\n";
print "L'ultimo argomento è ";
print "$ARGV[-1]\n";
#La scrittura di sotta commentata è equivalente
#print "L'ultimo argomento è $ARGV[$#ARGV]\n";
print "Ci sono ",$#ARGV+1, " argomenti\n";
