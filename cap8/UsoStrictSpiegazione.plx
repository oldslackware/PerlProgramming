#!/usr/bin/perl
use warnings;
use strict;
$main::x=5;
print $main::x;
#Tramite la sintassi di sopra 
#possiamo omettere il my o our
#Scrittura equivalente
our $y=6;
print "\n$y\n";
