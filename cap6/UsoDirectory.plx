#!/usr/bin/perl
use warnings;
use strict;
my $fil=".";
print "Contenuto della directory corrente:\n";
cambio:
opendir DH, $fil or die "Non posso aprire la directory corrente: $!";
goto ciclo;
ciclo: while ($_ = readdir(DH)) {
        next if $_ eq "." or $_ eq "..";
        print $_, " " x (30-length($_));
        print "d" if -d $_;
        print "r" if -r _;
        print "w" if -w _;
        print "x" if -x _;
        print "o" if -o _;
        print "\t";
        print -s _ if -r _ and -f _;
        print "\n";
}
sleep(2); 
print "Ora inserisci un tuo percorso\n";
$fil=<STDIN>;	
chomp($fil);

goto cambio;