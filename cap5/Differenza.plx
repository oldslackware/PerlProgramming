#!/usr/bin/perl
use warnings;
use strict;
my ($prova1,$prova2);
$prova1="Il perl è un linguaggio potentissimo\n";
$prova2="La perla della sperlonca è perlomeno perlata\n";

if($prova1=~ / perl/){
print "\n$prova1\n";
print "Presente la parola perl\n";
}

if($prova2=~ / perl/){
print "\n$prova2\n";
print "Non presente la parola perl\n";
} 
