#!/usr/bin/perl
use warnings;
use strict;
my $parola="";
while(!($parola eq "esci")){
$_=q("Ciò che sono stato ciò che sono e quello che sarò da 1 parte sempre lo stesso e dall'altra no");
print "$_\n";
print "Digita parola da cercare,esci per terminare o help per la guida\n";
sleep(1);

print "Inserisci parola da cercare: ";
$parola=<STDIN>;
chomp($parola);
if(/$parola/){
print "Parola trovata\n";
}
else{
if($parola eq "esci"){
print "Bye\n";
exit;
}
if($parola eq "help"){
sleep(2);
print "\nProva a cercare qu\[a,o,e\]llo o ch\[aiou\]\^ o \[0-9\] e analizziamo il risultato.\n";
print "\nNota:qu\[a,o,e\]llo equivale a voler cercare la sottostringa quallo,quollo,quello\n";
print "Nota:ch\[aiou\]\^ equivale a cercare solo la parola che escludendo cha chi cho chu\n";
print "\[0-9\] vuol dire cercare un numero all'interno della frase\n";
print "\\d vuol dire cercare un numero all'interno della frase\n";
print "\\D vuol dire cercare di non trovare un numero all'interno della frase\n";
print "\\w\\w vuol dire cercare una parola di due caratteri all'interno della frase\n";
print "\\W vuol dire cercare di non trovare una lettera all'interno della frase\n";
print "\\s vuol dire cercare un \\n,\\t,\\r(carriage return) all'interno della frase\n";
print "\\S vuol dire cercare di non trovare un \\n,\\t,\\r(carriage return) all'interno della frase\n";
print "\[\[:alpha:\]\] vuol dire cercare una lettera all'interno della frase\n";
print "\[\[:alnum:\]\] vuol dire cercare una lettera o un numero all'interno della frase\n";
print "\[\[:digit:\]\] vuol dire cercare un numero all'interno della frase\n";
print "\[\[:lower:\]\] vuol dire cercare una lettera minuscola all'interno della frase\n";
print "\[\[:upper:\]\] vuol dire cercare una lettera maiuscola all'interno della frase\n";
print "\[\[:punct:\]\] vuol dire cercare un segno di punteggiatura all'interno della frase\n";
print "par?te cerca parte o pate\n";
print "par+te UNO O PIÙ VOLTE:cerca parte parrte parrrte parrrrte parrrrrte etc...\n";
print "par*te ZERO O PIÙ VOLTE:cerca pate parte parrte parrrte parrrrte parrrrrte etc...\n";
print "(porte)|(parte) cerca porte o parte\n";
print "par(ta|ti|ri|te) cerca parta parti parri parte\n";
print "\[xyò\] vuol dire cercare una x o una y o una ò all'interno della frase\n";
print "\[\^xyz\] vuol dire cercare una lettera che non sia ne x ne y ne z all'interno della frase\n";
print "\. vuol dire cercare tutto tranne la \\n all'interno della frase\n";
print "\(xyò\) vuol dire cercare xyò all'interno della frase\n";
print "\{y,z\} vuol dire cercare una lettera compresa tra y e z all'interno della frase\n";
print "\{ ,z\} vuol dire cercare una lettera fino a z all'interno della frase\n";
print "\{y, \} vuol dire cercare una lettera a partire da y  all'interno della frase\n";

sleep(15);

}
else{
print "Parola non trovata\n";
}
}
}

