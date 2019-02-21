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
print "°Chiamo la funzione senza argomenti\n";
&stampasenzaargomenti();
print "°Adesso chiamo la funzione passandogli il vettore come argomento\n";
&stampa(@array);
&rimuoviElemento(@array);

sub stampa{
	print "I valori inseriti sono:\n";
	print '~~~' x $total,"\n";
	print "@_";
	print "\n",'~~~' x $total;
	print "\n";
	print "Il primo valore inserito è $_[0]\n";
	print "L'ultimo valore inserito è $_[-1]\n";

}
	
sub rimuoviElemento{
print '@' x 20,"\n°Adesso rimuoviamo un elemento\n";
&stampa(@array);
print "°Eliminiamo l'ultimo argomento ovvero ",pop(@_),"\n";#Con la pop eliminiamo l'ultimo elemento
foreach $ind(@_){
		print "$ind ";
	}
print "\n",'@' x 20,"\n";
}


sub stampasenzaargomenti{
print "Elementi inseriti\n";
	print '***' x $total,"\n";
	foreach $ind(@array){
		print "$ind ";
	}
	print "\n",'***' x $total;
	print "\n";
}
