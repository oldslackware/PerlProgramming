#!/usr/bin/perl
use warnings;
use strict;
my $option;
sub versione{
	open(VERS,"perl -v |")or die "Problema generico $!";
	print <VERS>;
	close(VERS);
}
$option=shift;
versione if $option eq "-v" or $option eq "--version";
print "All done.\n";
