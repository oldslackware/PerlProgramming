#!/usr/bin/perl
use warnings;
use strict;
package Persona;
#Costruttore
sub new{
my $class=shift;
my($cognome,$nome,$professione)=@_;
my $rif={"Cognome"=>$cognome,
	 "Nome"=>$nome,
	 "Professione"=>$professione,
	};
bless($rif,$class);
return $rif;
}
sub stampa{
	my $key=0;
	my $self=shift;#Passo il nome dell'oggetto
	print 'x' x 30,"\n";
	foreach $key ( @_){
	print "$key: $self->{$key}\n";
       }
	print 'x' x 30,"\n";
}
1;