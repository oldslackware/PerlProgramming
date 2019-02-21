#!/usr/bin/perl
package ImpiegatoSemplice;
use warnings;
use strict;

#COstruttore
sub new{
my $class=shift;
my $info={_Nome=>undef,
	  _Indirizzo=>undef,
	  _StipendioBase=>undef,
	};
return bless($info,$class);
}

#Metodi Accessori
sub setDati {
my $info=shift;
print "Inserisci il nome dell'impiegato.";
chomp($info->{_Nome}=<STDIN>);
print "Inserisci indirizzo di $info->{_Nome}.";
chomp($info->{_Indirizzo}=<STDIN>);
print "Inserisci lo stipendio base di $info->{_Nome}.";
chomp($info->{_StipendioBase}=<STDIN>);
}

sub getDati{
my $info=shift;
my ($key,$value);
print "Nome =$info->{Nome}.\n";
while(($key,$value)=each(%$info)){
$key=~s/_//;
print "$key =$value.\n" unless $key eq "Nome";
}
print "\n";
}
1;
