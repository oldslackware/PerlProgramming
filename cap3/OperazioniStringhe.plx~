#!/usr/bin/perl
use warnings;
use strict;
my $string="Italy Open Source regna nel web";
print $string,"\n";
#Operazione di sostituzione con indice di posizione e lunghezza della parola che dovremmo eliminare
substr($string,18,5)="domina";
print $string,"\n";
#Operazione di sostituzione a partire dalla fine
substr($string,-14)="è un dominio hostato su aruba";
print $string,"\n";
#Cancello un carattere
substr($string,18,1)="";
print $string,"\n";
#Cancello gli ultimi 30 caratteri
substr($string,-29)="";
print $string,"\n";
#Mi memorizzo una parte di stringa.
my $nazione=substr($string,0,6);
print $nazione,"\n";
#Maiuscolo
my $tmp=uc($nazione);
print $tmp,"\n";
#Minuscolo
$tmp=lc($nazione);
print $tmp,"\n";
#Concatenazione di stringhe con l'aggiunta di una spazio
my $concatenazione=$nazione." ".$string;
print $concatenazione,"\n";
 #Inversione
$tmp=reverse($concatenazione);
print $tmp,"\n";