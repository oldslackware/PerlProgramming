#!/usr/bin/perl
use warnings;
use strict;
{#inizio packages
package Ferrari;
 sub colore{"Rosso";}
 
 sub tipo{
 my $class=shift;
 print "Una $class di colore ", $class->colore,"\n";
}
}#fina packages

{#inizio packages
package Lamborghini;
 sub colore{"Giallo";}
 sub tipo{
 my $class=shift;
 print "Una $class di colore ", $class->colore,"\n";
}
}#Fine packages
Ferrari->tipo;
Lamborghini->tipo;