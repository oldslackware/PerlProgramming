#!/usr/bin/perl
use warnings;
use strict;
die "$0 richiede almeno un argomento\n" if $#ARGV <0;
while(<ARGV>){
	print;
}
print "\nAll done\n";
