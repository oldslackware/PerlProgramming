#!/usr/bin/perl
use warnings;
use strict;
package FordFiesta;
	
	sub TIEHASH{
	my $class=shift;
	my $modello=shift;
	my $colore=shift;
	my $prezzo=shift;
	print "Costruttore\n";
	my $fiesta={Modello=>$modello,
		    Colore=>$colore,
		    Prezzo=>$prezzo,
		    };

	bless($fiesta,$class);
	}
	
	sub FETCH{
		
		my $class=shift;
		my $chiave=shift;
		print "Dati Costruttore\n";
		return $class->{$chiave};
	}
	
	sub STORE{
		my $class=shift;
		my $chiave=shift;
		my $valore=shift;
		print "Settaggio dati Cliente\n";
		$class->{$chiave}=$valore;
	}
	1;