#!/usr/bin/perl
use strict;
my $contap=0;
my @array;
my $linea="";
$linea=<STDIN>;
while($linea ne ""){
chop($linea);
@array=split(/ /, $linea);
$contap  +=@array;
$linea=<STDIN>;
}
print("Numero parole: $contap\n");

