#!/usr/bin/perl
use warnings;
use strict;
my $scrivi=shift @ARGV;
open(IN, ">$scrivi") or die "Non posso aprire il file $!\n";
print IN "Ciao mondo.\n";
print IN "Ciao mondo per la seconda volta.\n";
sleep(2);
print "All done\n";
close(IN);
