#!/usr/bin/perl
use warnings;
$nome="Luciano";
print "Il mio nome � ",$nome,"\n"; 
#Cambio il mio nome
$nome="Lucky Killa";
print "Ma gli amici mi chiamano ",$nome,"\n";
$numero=16;
$nascita=$numero*5;
$numeroNo=$numero+1;
print "Il mio numero preferito � ",$numero," sono nato nel 19",$nascita," e il mio numero no � ",$numeroNo,"\n";
#attenzione agli incrementi
$numero=16;
$numeroNo=$numero++;
print "\tL'incremento fa l'overwrite della variabile di partenza\n";
print "Il mio numero preferito � ",$numero,"e il mio numero no � ",$numeroNo,"\n";