#!/usr/bin/perl
use warnings;
use strict;
#Con pop preleviamo l'ultimo elemento dell'array mentre con push inseriamo in coda nell'array.
my @distro=("Debian","Ubuntu","Suse");
my $butta;
my $mydistro="Slackware";
print "Distribuzioni a disposizione @distro\n";
$butta=pop @distro;
print "Distro dopo la prima pop @distro\n";
print "Abbiamo eliminato $butta\n";
$butta=pop @distro;
print "Distro dopo la seconda pop @distro\n";
print "Abbiamo eliminato $butta\n";
push @distro, $mydistro;
print "Distro dopo la  push @distro\n";
print "Abbiamo aggiunto in coda $mydistro\n";