#!/usr/bin/perl
use warnings;
use strict;
my ($nome,$cognome);
my $execute=2;
my $unlock=8;
print "Inserisci il tuo nome:";
$nome=<STDIN>;
chomp($nome);
print "Inserisci cognome:";
$cognome=<STDIN>;
chomp($cognome);
open(OUT,">>persone") or die "Non posso aprire il file:$!\n";
flock(OUT,$execute) or die;
print OUT "$nome:$cognome\n";
flock(OUT,$unlock) or die;
close(OUT);
