#!/usr/bin/perl
use warnings;
use strict;
my $occorenze=0;
my $parola;
print "Inserisci testo\n";
$_=<STDIN>;
chomp($_);
print "Inserisci parola da ricercare\n";
$parola=<STDIN>;
chomp($parola);
foreach my $word(split){
#split suddivide le parole della frase
#print "$word\n";
if($word eq $parola){
$occorenze++;
}
}
print "Sono state trovate $occorenze occorenze\n";
exit;