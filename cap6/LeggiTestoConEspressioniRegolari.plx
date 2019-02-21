#!/usr/bin/perl
use warnings;
use strict;
#SALTO DUE RIGHE
$/="\n\n";
open FILE,"dati.txt" or die $!;
my @file=<FILE>;
my $eth0=$file[4];
print "\n-----Scheda di rete primaria-----\n$eth0\n";
sleep(2);
my $gw=$file[8];
print "\n-----Gateway---------------------\n$gw\n";
sleep(2);
my $wlan0=$file[9];
print "\n-----Wlan------------------------\n$wlan0\n";
sleep(4);
