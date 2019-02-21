#!/usr/bin/perl
use warnings;
use strict;
#Inserimento e prelievo in testa.
my @array = ();
#Con unshift inseriamo in testa ovvero il primo elemento dell'array
#Con shift eliminiamo la testa	ovvero il primo elemento dell'array
unshift(@array, "Perl");
print "Array contiene: @array\n";
unshift @array, "Ruby", "Php";
print "Array dopo l' unshift contiene: @array\n";
shift @array;
print "Array dopo l'eliminazione del primo elemento (lo shift) contiene: @array\n"; 
shift @array;
print "Array dopo l'eliminazione del secondo elemento (lo shift) contiene: @array\n"; 
unshift @array, "Java";
print "Array dopo l' unshift contiene: @array\n";
