#!/usr/bin/perl
use warnings;
use strict;
my $total=0;
my $somma=@ARGV;
print "Hai inserito $somma elementi\n"; 
$total+=$_ for @ARGV;
print "Somma=$total\n";