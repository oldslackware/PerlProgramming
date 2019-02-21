#!/usr/bin/perl
use Uomo;
use Donna;
use warnings;
use strict;
my $uomoref=Uomo->new;
my $donnaref=Donna->new;
$uomoref->setDati("Mario Bianchi","Maschio","Tecnico Nucleare");
$donnaref->setDati("Carla Verdi","Femmina","Casalinga");
$uomoref->getDati;
$donnaref->getDati;