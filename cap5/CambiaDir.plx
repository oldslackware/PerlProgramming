#!/usr/bin/perl 
use warnings;
use strict;
my $percorso="/usr/man/man2/lib.so";
my $newpercorso="";
my $newnewpercorso="";
print "Percorso di partenza:$percorso\n";
($newpercorso=$percorso)=~ s/man/lib/;
print "Nuovo percorso:$newpercorso\n";
#Sostituisco il man seguito da numero quindi man2  con lib2 in quanto il 2 è dato da \d
($newnewpercorso=$percorso)=~ s/man(?=\d)/lib/;
print "Nuovo nuovo percorso:$newnewpercorso\n";