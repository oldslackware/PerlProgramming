#!/usr/bin/perl
use warnings;
use strict;
use File::Path;
my $fil="";
print "Inserisci nome del file da cancellare\n";
$fil=<STDIN>;
chomp($fil);
unlink ($fil), or die $!; 
print "\nFile eliminato \n"; 
print "Inserisci ora una tua directory da cancellare\n";
my $dir=<STDIN>;
chomp($dir);
rmtree ($dir);
print "\nDirectory eliminata\n";
