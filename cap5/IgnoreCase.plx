#!/usr/bin/perl
use warnings;
use strict;
my  $frase="Questo dominio è Italy Open Source"; 
print "\n$frase\n";
print "Cerchiamo la parola italy e non dovremo trovarla\n";
if($frase !~ / italy/){
print "Nessuna parola italy\n";
}
print "Adesso cerchiamo di nuovo italy a prescindere dalla maiuscola\n";
if($frase =~ / italy/i){
#la i sta per ignoreCase
print "A prescindere dalle maiuscole è presente la parola italy\n";
}
