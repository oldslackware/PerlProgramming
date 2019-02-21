#!/usr/bin/perl
#In breve con il polimorfismo intendiamo la proprietà di un oggetto quella di #assumere diverse forme.

package Donna2;
use warnings;
use strict;
sub new{#Costruttore default
my $class=shift;
my $cdef={};
bless($cdef,$class);
}

sub setDati{
my $self=shift;
$self->{"Nome"}="Paola";
$self->{"Sesso"}="Femmina";
$self->{"Professione"}="Casalinga";
}

sub saluto{
my $self=shift;
print "Il mio lavoro è $self->{Professione} e sono una donna di nome $self->{Nome}.\n";
}
1;