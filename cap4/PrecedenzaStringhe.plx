#!/usr/bin/perl
use warnings;
use strict;
my ($mia,$tua);
$mia="perl";

while(1){
print "Ordinamento alfabetico rispetto alla parola $mia\n";
print "Inserisci una parola\n";
$tua=<STDIN>;
chomp $tua;
#Le parole non sono uguali
if($tua ne $mia){
print "Le paroli non sono uguali\n";
}
#Le parole sono uguali
if($tua eq $mia){
print "Le paroli sono uguali\n";
exit;
}
#Precedenza Alfabetica
if($tua le $mia){
print "$tua precede alfabeticamente $mia\n";
}
#La parola viene dopo
if($tua gt $mia){
print "$tua segue alfabeticamente $mia\n";

}

}