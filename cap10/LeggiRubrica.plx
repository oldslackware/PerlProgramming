#!/usr/bin/perl
use AnyDBM_File;
use warnings;
use strict;
my %rubrica;
my @rubricaordinata;
my ($i,$valore,$totale);
dbmopen(%rubrica,"rubricadb",0666);
@rubricaordinata=sort keys %rubrica;#Ordino il db in base alle chiavi
foreach $i(@rubricaordinata){
	 $valore=$rubrica{$i};
	 $totale++;
	 write;
}
dbmclose(%rubrica);
format STDOUT_TOP=
Contatto                      Telefono          IDMemoria
============================================================================
.
format STDOUT=
@<<<<<<<<<<<<<<<<<<<<<<<<<<<<<@<<<<<<<<<<<<<<<<<<<<<<@<<<<<<<<<<<<<<<<<<<<<<<<
$i,            $valore,		  $totale

.

