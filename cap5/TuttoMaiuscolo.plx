#!/usr/bin/perl
use warnings;
use strict;
my $maiusc="";
print "Inserisci del testo\n";
my $str=<STDIN>; 
print "Hai digitato $str\n";
($maiusc = $str) =~ s/(\w+)/\U$1/g;
print "\n$maiusc\n";
