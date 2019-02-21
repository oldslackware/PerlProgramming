#!/usr/bin/perl
use warnings;
use strict;
my $file=shift @ARGV;
my $line;
open(IN,$file) or die "Non posso aprire il file $!\n";
seek(IN,-25,2) or die;
print "Stampo a partire dal 25-esimo carattere a partire dalla fine\n";
print "Per capire bene lanciare od -c sul file che si deve esaminare\n";
while(<IN>){
print;
}
close(IN);
