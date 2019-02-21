#!/usr/bin/perl
use warnings;
use strict;
print "Inserisci del testo contenente o no la sottostringa perl\n";
$_=<STDIN>;
my $substring="perl";
#Con questa dicitura ricerchiamo le occorenza *perl* quindi 
#risulta vero per parole come perla e sperlonca.
#In futuro vedremo che con if($_ =~ / $substring/) con gli appositi spazi cerchiamo solo perl
if($_ =~ /$substring/){
print "Sottostringa trovata\n";
}
else{
print "Sottostringa non trovata\n";
} 
