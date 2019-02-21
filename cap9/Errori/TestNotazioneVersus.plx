#!/usr/bin/perl
use Uomo2;
use Donna2;
use warnings;
use strict;
my $uomoref=Uomo2->new;
my $donnaref=Donna2->new;
$uomoref->setDati;
$donnaref->setDati;
$uomoref->saluto;
$donnaref->saluto;
#Uso dell'operatore versus la cui spiegazione si vede dall'output
my $donnatrans=new Donna2;
$donnatrans->setDati;
#Donna2::->saluto($uomotrans);
$donnatrans->saluto;
Uomo2::->saluto($donnatrans);