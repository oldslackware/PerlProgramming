#!/usr/bin/perl
use ConvEuroDollaro;
use warnings;
use strict;
my @elenco;
tie @elenco,"ConvEuroDollaro";
my $i;#indice di scorrimento dell'array
my ($partenza,$fine,$incremento);
print "Inserisci il punto di partenza della tabella\n";
$partenza=<STDIN>;
chomp($partenza);
print "Inserisci il punto finale della tabella\n";
$fine=<STDIN>;
chomp($fine);
print "Inserisci l'incremento tra un valore e l'altro\n";
$incremento=<STDIN>;
chomp($incremento);
print "Conversione euro dollaro-USA\n\n";
print '~' x 40,"\n";
for($i=$partenza;$i<=$fine;$i+=$incremento){
	$elenco[$i]=$i;
	printf"\t$i E. = %.2f D.\n", $elenco[$i];
}
print '~' x 40,"\n";