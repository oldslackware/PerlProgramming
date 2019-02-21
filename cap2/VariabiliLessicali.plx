#!/usr/bin/perl
use warnings;
#Perl introduce il concetto di variabili lessicali ovvero quello variabili che hanno visibilità solo all'interno del blocco
#Per costruire una variabile lessicale occorre anteporre al dollaro($) il suffisso  my
$variabile=5;
print 'Abbiamo salvato $variabile con valore ',$variabile,"\n";
{
	#variabile lessicale
	my $variabile;
	$variabile=10;
	print 'Dentro il blocco il valore di $variabile è ',$variabile,"\n";
}
print 'Fuori dal blocco $variabile vale di nuovo ',$variabile,"\n";
