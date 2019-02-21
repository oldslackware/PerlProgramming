#!/usr/bin/perl
use warnings;
use strict "vars";
my $a=1;
my $b=2;
my $c=3;
print "Somma tra $a e $b\n";
&myadd($a,$b);
print "Somma tra 4 e 5\n";
&myadd(4,5);
my @list=(10,20,30);
my $scalar=2;
&stampa(@list);
&mult(@list,$scalar);
sub myadd($$){
	my($x,$y)=@_;
	print "Totale:",$x+$y,"\n";
}
sub stampa{
print "I valori dell'array sono:\n";
print "@_";
print "\n";
}
sub mult(@$;$){
#Pop obbligatoria altrimenti anche la variabile fà parte dell'array
my ($number)=pop(@_);
my (@arr)=@_;
print "Moltiplicando l'array per $number ottengo:\n";
my $i=0;
for $i (@arr){
$i *=$number;
print "-$i";
}
print "\n";
}