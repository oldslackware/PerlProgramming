#!/usr/bin/perl
use warnings;
use strict;
#Mappa con chiave e valore
my %luoghi=(
		Paolo 	=> "Roma",
		Aldo	=> "Firenze",
		Marco	=> "Torino",
		Kevin	=> "Palau",
		Giulia	=> "Rimini", 
		Tina	=> "Aosta",
		Piera 	=> "Ravenna"
	); 
#Aggiungiamo un elemnto alla lista 
$luoghi{Michael}="Chicago";
$luoghi{Jordan}="Chicago";
print "Michael risiede a ",$luoghi{Michael},"\n";
print "Jordan risiede a ",$luoghi{Jordan},"\n";
#Eliminiamo la corrispondenza del luogo relativa a Tina
delete $luoghi{Tina};
print "Tina risiede a ",$luoghi{Tina},"\n";