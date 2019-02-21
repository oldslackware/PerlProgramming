#!/usr/bin/perl
#In breve con il polimorfismo intendiamo la proprietà di un oggetto quella di #assumere diverse forme.

package Donna;
use warnings;
use strict;
sub new{#Costruttore default
my $class=shift;
my $cdef={};
bless($cdef,$class);
}

sub setDati{
my $self=shift;
my($nome,$sesso,$professione)=@_;
$self->{"Nome"}="$nome";
$self->{"Sesso"}="$sesso";
$self->{"Professione"}="$professione";
}

sub getDati{
my $self=shift;
print "~" x 20,"\n";
print "Dati donna\n";
print "~" x 20,"\n";
my($key,$value);
#while(($key,$value)=each(%$self)){
#print "$key:$value.\n";
#}
while( ($key, $value)=each %$self){
print $key, " : ", $value, "\n";
}
print "~" x 20,"\n";
}
sub DESTROY{
	my $self=shift;
	print "$self->{'Nome'} distrutta\n";
}
1;