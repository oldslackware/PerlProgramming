#!/usr/bin/perl
use warnings;
use strict;
my $apri=shift @ARGV;
my @linee;
#L'operatore < è un operatore di lettura che non è richiesto.
open IN,"<$apri" or die "Non posso aprire il file:$!\n";
#Viene letta ogni linea del file.La presenza di una newline
#indica la fine di un elemento.
@linee=<IN>;
#La riga successiva  mi stampa tutto il contenuto del file.
#print @linee;
#$#linee rappresenta il valore dell'ultimo valore dell'array.
#L'incrementazione unitario di tale valore è indenspensabile in quanto
#le linee vengono numerate a partire da zero.
print"\nIl file $apri contiene ",$#linee+1," linee di testo\n";
close (IN);
