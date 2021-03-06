#!/usr/bin/perl
use warnings;
use strict;
#nelle hash non sono presenti duplicati
my %elenco;
my $fil="";
print "Inserisci file in cui intendi da salvare\n";
$fil=<STDIN>;
chomp($fil);
#Modalita append dovuta al >>
open OUT,">>$fil" or die "$!\n";
print "Inserisci il voto dell'esame\n";
print "Inserisci linea vuota per terminare\n";
print OUT "\nInizio esame\n"; 
while(1){
my $esame=<STDIN>;
chomp($esame); 
#leggiamo fino a che non si presenta la linea vuota
last unless $esame;
#salviamo l'esame nell'elenco(hash) 
$elenco{$esame}++;
}

while(my ($esame) =each %elenco){
if($esame >=18){
$esame =~ s/^(\d+)/$1 AMMESSO/ unless $esame =~ /^\d+s/;
}else{
$esame =~ s/^(\d+)/$1 NON-AMMESSO/ unless $esame =~ /^\d+s/;
}
print "$esame \n";
print  OUT "$esame\n";
}
print OUT "\nFine esame\n"; 
