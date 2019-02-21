#!/usr/bin/perl
use warnings;
print "Come ti chiami?\n";
#Facciamo in modo ora che il programma attenda l'input
chomp ($nome=<STDIN>);
print "Benvenuto $nome, sei pronto per imparare Perl\n";
chomp($risposta=<STDIN>);
#Convertiamo la risposta in minuscolo
$risposta=lc($risposta);
if($risposta eq "si" or $risposta eq "s"){
print "Bene,preperiamoci a programmare\n";
}
else{
print "Prova con un altro linguaggio più semplice\n";
}
$time=localtime;
print "$nome hai lanciato questo script il $time\n";
