#!/usr/bin/perl
use warnings;
use strict;
my $parola="";
while(!($parola eq "esci")){
$_=q("Nella sperlonca perlomeno ho trovato una perla");
print "\n\t\t\tAnalizziamo:\n$_\n";
print "\nProva a cercare perl o perl+ o perl\\+ e analizziamo il risultato.\nDigita esci per terminare\n";
print "\nNota:perl+ equivale a voler cercare la sottostringa\n";
print "\nNota:perl\\+ equivale a cercare solo la parola perl\n";
print "\nAltri caratteri speciali sono:. * + \\ [ ] { } ^ \$ | \n";
print "Dammi parola\n";
$parola=<STDIN>;
chomp($parola);
if(/$parola/){
print "Presente il match: $parola\n";
print "Come avrai notato � presente un incoerenza....\n";
}else{
if($parola eq "esci"){
print "Bye bye\n";
}else{
print "Nessun match per: $parola\n";
}
}
}
