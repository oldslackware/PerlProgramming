#!/usr/bin/perl
use warnings;
use strict;
die "$0 richiede come argomento un nome\n"   if $#ARGV<0;
my $nome=shift;
saluto();
sub saluto{
	print "Ciao $nome ... benvenuto\n";
}
