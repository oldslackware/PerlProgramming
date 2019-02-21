#!/usr/bin/perl
use Boss;
use warnings;
use strict;
print "Inserisci dati del primo boss.\n";
my $boss_uno=Boss->new;
$boss_uno->setDati;
print "\nQuesti sono i dati del primo boss.\n";
$boss_uno->getDati; 