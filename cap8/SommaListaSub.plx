#!/usr/bin/perl
use warnings;
use strict;
totale(1 .. 10);
totale(1 .. 100);
totale(1 .. 1000);
sub totale{
	my $somma=0;
	$somma +=$_ for @_;
	print "La somma è $somma.\n";
}
