#!/usr/bin/perl
use warnings;
use strict;
package ConvEuroDollaro;
#Tabella di conversione Dollaro-Euro
	sub TIEARRAY{
	my $class=shift;#Mi shifto l'array
	my $var=[];
	bless($var,$class);                                       
	}
	
	sub FETCH{
	my $var=shift;
	my $i=shift;#Indice array
	return $var->[$i];
	
	}
	
	sub STORE{
	my $var=shift;
	my $i=shift;#Indice array
	my $dollaro=shift;
	$var->[$i]=($dollaro)* 1.4189;
	}
	1;
