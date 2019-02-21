#!/usr/bin/perl
use warnings;
use strict;
my $linea;
my $filecorrente="";
#numera più file passati da riga di comando
while(<>){
if($filecorrente ne $ARGV){
	$filecorrente=$ARGV;
	print "\n\t\tFile:$ARGV\n\n";
	$linea=1;
}
print $linea++; 
print ":$_";
}
