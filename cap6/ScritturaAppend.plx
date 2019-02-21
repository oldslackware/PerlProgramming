#!/usr/bin/perl
use warnings;
use strict;
my $scrivi=shift @ARGV;
open(IN,">>$scrivi") or die "Non posso aprire il file: $!\n";
sleep(1);
print IN "Ho aggiunto in coda una frase\n";
print "All Done\n";
close(IN);
