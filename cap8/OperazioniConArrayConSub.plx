#!/usr/bin/perl
use warnings;
use strict;
my @array;
my $ind;
my $total;
if($#ARGV<1){
	print "Inserisci almeno due argomenti\n";
	die "$!";
}
@array=@ARGV;
$total=@array;#memorizzo in total il numero di elementi contenuti nell'array
print "�Adesso chiamo la funzione passandogli il vettore come argomento\n";
&stampa(@array);
&sommaElementi(@array);
print "Vediamo ora cosa succede se richiamo la funzione stampa:\n";
&stampa(@array);
sub stampa{
	print "I valori inseriti sono:\n";
	print '~~~' x $total,"\n";
	print "@_";
	print "\n",'~~~' x $total;
	print "\n";
	print "Il primo valore inserito � $_[0]\n";
	print "L'ultimo valore inserito � $_[-1]\n";

}


sub sommaElementi{
my ($quantita,$ind);
print "Inserisci il valore da sommare a tutti gli elementi\n";
$quantita=<STDIN>;
chomp($quantita);
for $ind (@_){
$ind +=$quantita;
print "$ind-";
}
print "\n";
}