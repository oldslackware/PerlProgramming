#!/usr/bin/perl
use warnings;
use strict;

my($scelta,$contanti,$resto,%bar);

%bar=(
	caffe 			=> 0.80,
 	cappuccino		=> 1.00,	
	cornetto		=> 1.20,
	"succo di frutta"	=> 1.50,
	latte			=> 0.90,
	acqua			=> 0.30
);
print "\n";
for(keys %bar){
print "Un $_ costa $bar{$_}�\n";
}
print "\n";


print "Cosa prendi?\n";
$scelta=<STDIN>;
chomp $scelta;
#Se immetto una scelta non presente segnalo l'errore
if(! $bar{$scelta}){
die "Scelta non presente\n";
}

print "Inserisci contanti\n";
$contanti=<STDIN>;
chomp $contanti;
if($contanti<$bar{$scelta}){
die "Non hai abbastanza soldi per prendere $scelta\n";
}
#Siccome leggiamo diversi imput abbiamo un problema sull'input
#Infatti l'ultimo carattere di input � rappresentata dalla newline
#Per non considerarla utilizziamo chomp
#chomp($scelta,$contanti);
$resto=$contanti-$bar{$scelta};
print "Hai preso $scelta e hai pagato con $contanti euro \n";
print "Il tuo resto � $resto euro\n";
 
