#!/usr/bin/perl
use warnings;
use strict;
my $voto;
print "Digita 31 per terminare\n";
while(1){
print "Inserisci il voto del tuo esametra 18 e 31(lode)\n";
$voto=<STDIN>;
if($voto<18 || $voto>31){
die "Hai inserito un voto non valido\n";
}
elsif($voto<=21){
print "potevi fare di meglio\n";
} 
elsif($voto>21 && $voto<=24){
print "Complimenti\n";
}
elsif($voto>24 && $voto<30){
print "Secchione\n";
}
else{
print "Lecchino\n";
exit;
} 
}