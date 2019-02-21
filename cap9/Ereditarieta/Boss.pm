#!/usr/bin/perl
package Boss;
use warnings;
use strict;
BEGIN{unshift(@INC,"./classeBase");}
our @ISA=qw(ImpiegatoSemplice);
use ImpiegatoSemplice;
print "Il boss è un impiegato.\n" if Boss->isa('ImpiegatoSemplice');
print "Il boss conosce le proprietà  dell'impiegato.\n"if Boss->can('getDati');
#COstruttore Boss
sub new{
my $class=shift;
my $impieg=new ImpiegatoSemplice;
$impieg->setDati;
print "Prima di bless il boss è un: ",ref($impieg),"\n";                    
bless($impieg,$class);
print "Dopo bless il boss è un: ",ref($impieg),"\n"; 
return $impieg;
}

#Metodi Accessorio soggetto a overwrite
sub setDati {
my $info=shift;
my $salario=sub{
		my($base,$bonus)=@_;
		return $base+$bonus;
	};
	#Aggiugiamo alla tabella hash di impiegatosemplice Bonus,Provincia e StipendioConBonus che Ã¨ il risultato della sub salario
print "Inserisci il bonus di $info->{_Nome}:";
chomp($info->{_Bonus}=<STDIN>);
print "Inserisci la provincia di  provenienza di $info->{_Nome}:";
chomp($info->{_Provincia}=<STDIN>);
$info->{_StipendioConBonus}=&$salario($info->{_StipendioBase},
				      $info->{_Bonus}
				      );
}

1;
