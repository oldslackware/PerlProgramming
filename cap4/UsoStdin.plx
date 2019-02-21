#!/usr/bin/perl
use warnings;
use strict;

while(<STDIN>){
chomp;
die "Una volta premuto invio il programma termina grazie a unless\n" unless $_;
my $maiuscolo=uc $_;
print "$maiuscolo\n";
}
