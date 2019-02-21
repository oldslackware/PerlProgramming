#!/usr/bin/perl
use warnings;
use strict;

my %elenco;
my $fil="";
print "Inserisci file in cui intendi da salvare\n";
$fil=<STDIN>;
chomp($fil);
open OUT,">$fil" or die "$!\n";
print "Inserisci articolo della spesa\n";
print "Inserisci linea vuota per terminare\n";
while(1){
my $articolo=<STDIN>;
chomp($articolo); 
#leggiamo fino a che non si presenta la linea vuota
last unless $articolo;
#salviamo l'articolo nell'elenco(hash) convertendolo in maiuscolo con uc
$elenco{uc $articolo}++;
}
#Invochiamo il programma esterno MySort per ordinare ma questa volta non conto i duplicati
open(SORT, "| perl MySort.plx") or *SORT = *STDOUT;
select *SORT;
while(my ($articolo,$quantita) =each %elenco){
if($quantita >1){
$articolo =~ s/^(\w+)\b/$1/ unless $articolo =~ /^\w+s\b/;

}
print "$articolo: $quantita\n";
print  OUT "$articolo: $quantita\n";
}
