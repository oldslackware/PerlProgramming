#!/usr/bin/perl
use warnings;
use strict;
print "Inserisci del testo contenente o no la parola perl\n";
$_=<STDIN>;
my $substring="perl";
#Con questa dicitura non ricerchiamo le occorenza *perl* quindi 
#risulta falso per parole come perla e sperlonca.
#Adesso vedremo che con if($_ =~ / $substring/) con gli appositi spazi cerchiamo solo perl
if($_ =~ / $substring/){
print "Parola trovata\n";
}
else{
print "Parola non trovata\n";
} 
 
