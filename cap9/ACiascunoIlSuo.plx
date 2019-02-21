#!/usr/bin/perl
use warnings;
use strict;
{
	package Studente;
	sub info{
		my $class=shift;
		
		print "Uno studente di ",$class," sta studiando ",$class->studia,"\n";#Delega il tutto
	}
}
{ 
	package Chimica;
	use vars qw(@ISA);
	@ISA=qw(Studente);
	sub studia{"Chimica Inorganica"};
}
{
	package Fisica;
	use vars qw(@ISA);
	@ISA=qw(Studente);
	sub studia{"Meccanica Quantistica";}
}
Chimica->info;
Fisica->info;

my $studente="Ingegnere";
my $rifstudente=\$studente;#Puntatore
bless($rifstudente,"Chimica");#Adesso $rifstudente è di tipo chimica
print "Anche io che sono un $$rifstudente studio ";#Deferenzio
print "anche se non capisco ",$rifstudente->studia,"\n";
$rifstudente->info;#Errore voluto in quanto non riesco(al momento) ad accedere alla variabile d'istanza $class di info.