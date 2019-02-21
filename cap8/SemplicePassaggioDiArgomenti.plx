#!/usr/bin/perl
use warnings;
use strict;
if($#ARGV<1){
	print "Uso perl nomeprogramma.plx <nome><cognome>\n";
	die "Usare due argomenti\n";
}
my($nome,$cognome);
$nome=shift @ARGV;
$cognome=shift @ARGV;
&info($nome,$cognome);
sub info{
	print "Nome e cognome:\n@_ \n";
	}

