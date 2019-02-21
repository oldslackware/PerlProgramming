#!/usr/bin/perl
#In breve con il polimorfismo intendiamo la proprietà di un oggetto quella di #assumere diverse forme.

package Uomo2;
use warnings;
use strict;
sub new{#Costruttore default
my $class=shift;
my $cdef={};
bless($cdef,$class);
}

sub setDati{
my $self=shift;
$self->{"Nome"}="Mario";
$self->{"Sesso"}="Maschio";
$self->{"Professione"}="Muratore";
}

sub saluto{
	my $self=shift;
	print "Il mio lavoro è $self->{Professione} e sono un uomo di nome $self->{Nome}.\n";
}
1;