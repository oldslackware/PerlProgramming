#!/usr/bin/perl
use Persona;
use warnings;
use strict;
#Due metodi per invocare il costruttore
#primo metodo funzionante ma commentato
#my $persona1=new Persona("Torvald","Linus","Imprenditore");
#Secondo metodo
my $persona1=Persona->new("Bianchi","Lino","Imprenditore");
my $persona2=Persona->new("Rossi","Mario","Medico");
my $persona3=Persona->new("Verdi","Carlo","Ingegnere");

$persona1->stampa("Cognome","Nome","Professione");
$persona2->stampa("Cognome","Nome","Professione");
$persona3->stampa("Cognome","Nome","Professione");
print "\n\nOra stampo solo alcuni attributi degl'oggetti\n";
$persona1->stampa("Cognome","Professione");
$persona2->stampa("Nome","Professione");
$persona3->stampa("Cognome","Nome");
print "I riferimenti dei tre oggetti sono $persona1,$persona2,e $persona3\n";