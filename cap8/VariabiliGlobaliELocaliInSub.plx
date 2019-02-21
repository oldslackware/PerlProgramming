#!/usr/bin/perl
use warnings;
use strict;
our($so,$distro);
$so="Linux";
$distro="Slackware";
print '#' x 25,"\n";
print "|$so| |$distro| globali\n";
print "Il  mio sistrema operativo è |$so|\n";
print "La mia distro è |$distro|\n";
print '#' x 25,"\n\n";
&cambia;

sub cambia{
my $so="Unix";
local $distro="Open-Bsd";
print '#' x 25,"\n";
print "Dentro la sub cambiano i valori\n";
print "Il  mio sistrema operativo è |$so|\n";
print "La mia distro è |$distro|\n";
print '#' x 25,"\n\n";
&cosacambia;#Mediante questa sub vediamo che modifiche abbiamo apportato alla nostre variabili globali
}
sub cosacambia{
print '#' x 25,"\n";
print "Il  mio sistrema operativo è |$so|\n";
print "La mia distro è |$distro|\n";
print '#' x 25,"\n\n";
}

#Stampiamo le variabili globali
print '#' x 25,"\n";
print "Il mio vero sistema operativo è |$so|\nLa mia distro è |$distro|\n";
print '#' x 25,"\n";
