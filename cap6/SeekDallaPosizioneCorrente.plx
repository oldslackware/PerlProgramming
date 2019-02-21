#!/usr/bin/perl
use warnings;
use strict;
my $file=shift @ARGV;
my $parola="";
my $line;
print "Inserisci parola\n";
$parola=<STDIN>;
chomp($parola);
open(IN,$file) or die "Non posso aprire il file $!\n";
while(<IN>){
	last if/$parola/;
#Mi memorizzo la posizione dove trovo la parola e faccio partire la ricerca da questa posizione
}
seek(IN,0,1);
print "La parola dopo $parola è:\n";
$line=<IN>;
print $line;
close(IN);
