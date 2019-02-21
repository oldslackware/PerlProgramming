#!/usr/bin/perl
use warnings;
use strict;
#Uso:perl FindPipe.plx <risorsa_da_cercare> <percorso>
my $file=shift @ARGV;
my $indice=shift @ARGV;
my $result;
open(CERCA,"find $indice -name $file* -print  |") or die "Problema\n";
while($result=<CERCA>){
	print $result;
}
