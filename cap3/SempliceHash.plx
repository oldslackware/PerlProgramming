#!/usr/bin/perl
use warnings;
use strict;
my $friend="Kevin";
my $citta="Palau";
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
print "Marco risiede a ",$luoghi{Marco},"\n";
print "Paolo risiede a ",$luoghi{Paolo},"\n";
print "Piera risiede a ",$luoghi{Piera},"\n";
print "$friend risiede a $luoghi{$friend}\n";
#Ora dal  luogo vogliamo risalire alla persona.
#Per fare ciò invertiamo la tabella hash
my %persona=reverse(%luoghi);
print "A Torino risiede ",$persona{Torino},"\n";
print "A Roma risiede ",$persona{Roma},"\n";
print "A Firenze risiede ",$persona{Firenze},"\n";
print "$persona{$citta} risiede a $citta\n";

#Giochiamo con due Hash
print "$persona{$citta} risiede a $luoghi{$friend}\n";