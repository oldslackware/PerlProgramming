#!/usr/bin/perl
use warnings;
use strict;
my $parola="";
while(!($parola eq "esci")){
$_=q("Nella sperlonca perlomeno ho trovato una perla");
print "\n\t\tTesto da analizzare\n"; 
print "$_ \n";
sleep(2);
#ELIMINAZIONE DEI CARATTERI SPECIALI
print "\nProva a cercare perl o perl+ o perl\\+ e analizziamo il risultato.\nDigita esci per terminare\n";
sleep(1);
print "\nNota:perl+ equivale a voler cercare la sottostringa\n";
print "\nNota:perl\\+ equivale a cercare solo la parola perl\n";
sleep(1);
print "\nAltri caratteri speciali sono:. * + \\ [ ] { } ^ \$ | \n";
print "Dammi parola\n";
$parola=<STDIN>;
chomp($parola);
sleep(3);
#Eliminiamo tutti i 14 caratteri speciali con \Q mentre con \E eliminiamo la riga vuota ovvero la pressione di enter
if(/\E\Q$parola/){
print "Parola trovata\n";
}
else{
if($parola eq "esci"){
print "Bye\n";
exit;
}
else{
print "Parola non trovata\n";
}
}
}