#!/usr/bin/perl -i.bak
#Nel file con estensione bak ritroveremo ilo nostro file originale.
#Ovvimente il file passato da riga di comando risulterÓ modificato
use warnings;
use strict;
die "$0 richiede come argomento il nome del file che si vuole modificare\n" if $#ARGV<0;
while(<ARGV>){
	tr/a-z/A-Z/;#Trasformo tutte le lettere da minuscolo a maiuscolo.
	print;
	close ARGV if eof;
}
