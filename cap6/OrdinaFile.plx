#!/usr/bin/perl
use warnings;
use strict;
my $file=shift @ARGV;
#FIltro di uscita ordinato e tutto in maiuscolo
open(ORDINA,"| sort +1|tr '[a-z]' '[A-Z]'");
open(IN, "$file");
while(<IN>){
	print ORDINA;
}
close ORDINA;
