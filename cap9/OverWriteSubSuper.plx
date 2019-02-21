#!/usr/bin/perl
use warnings;
use strict;
{#classe genitrice
package Auto;
sub tipo{
my $class=shift;
print "Una $class di colore ",$class->colore,"\n";
}
}#FINE Genetrice
#ISA dichiara che Ferrari è (is a) un auto
{#inizio packages
package Ferrari;
use vars qw(@ISA);#Uso della variabile @ISA che risiede in un package appropriato.
@ISA=qw(Auto);#Vai alla classe genitrice
 sub colore{"Rosso";}
#OverWrite
sub tipo{
my $class=shift;
print "La $class è generalmente di colore ",$class->colore,"\n";
}

}#fina packages

{#inizio packages
package Lamborghini;
use vars qw(@ISA);
@ISA=qw(Auto);
 sub colore{"Giallo";}
#OverWrite
sub tipo{
my $class=shift;
print "La $class è generalmente di colore ",$class->colore,"\n";
}
}#Fine packages

{
package Pagani;
use vars qw(@ISA);
@ISA=qw(Auto);
sub colore{"Nero";}
}

Ferrari->tipo;
Lamborghini->tipo;
#Auto::tipo("Pagani"); 
Pagani->tipo;
#Ovviamente adesso richiamo il metodo della superclasse
Auto::tipo("Ferrari");