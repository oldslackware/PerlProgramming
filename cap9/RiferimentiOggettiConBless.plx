#!/usr/bin/perl
#USO EREDITÀ
use warnings;
use strict;
{#classe genitrice
package Auto;
sub tipo{
my $class=shift;
print "Una $class di colore ",$class->colore,"";
}
}#FINE Genetrice


{#inizio packages
package Ferrari;
use vars qw(@ISA);#Uso della variabile @ISA che risiede in un package appropriato.
@ISA=qw(Auto);#Vai alla classe genitrice
 sub colore{"Rosso";}
#OverWrite
sub tipo{
my $class=shift;
#EREDITA' e richiamo della superclasse
$class->SUPER::tipo(@_);
print ",perciò perchè cambiare colore??\n";
}
sub info{
print "la mia Ferrari costa 280000 euro";
}
}#fine packages


my $car="360 Modena";
#Riferimento alla variabile $car
my $carnew=\$car;
print "La $car ";
#Con bless faccio in modo che il mio riferimento sia una Ferrari
bless $carnew,"Ferrari";
#Ferrari::info($carnew);Qua costruisco un oggetto,sotto costruisco un istanza
Ferrari->info($carnew);#Questa notazione è possibile in quanto la variabile $carnew è visibile.
print "\n";
Ferrari->tipo($carnew);