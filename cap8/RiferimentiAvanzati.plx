#!/usr/bin/perl
use warnings;
use strict;
my @squadre=qw(Liverpool Ajax Cagliari Valencia Porto);
my $numerosquadre=@squadre;
my %giocatori=("Cristiano Ronaldo" => "Real Madrid",
	       "Alessandro Matri" => "Juventus",
		"Lionel Messi" => "Barcellona"
		);
my $rifns=\$numerosquadre;#riferimento ad una variabile
my $rifsq=\@squadre;#riferimento ad un vettore o lista
my $rifmap=\%giocatori;#riferimento hash map
my ($key,$value);
#Usiamo questi riferimenti
print "Sono presenti $$rifns squadre\n";#Deferimento variabile
print "Elenco squadre: @$rifsq \n";#Deferimento array

while( ($key, $value) = each ( %$rifmap )){#Uso del defer. per scandire la mappa
     print "$key gioca nel $value\n";
    }

