#!/usr/bin/perl
use warnings;
use strict;
my @elenco=qw(/usr/bin /bin /usr/local/bin);
print "Elenco directory di partenza\n@elenco\n";
my @newelenco;
for(@newelenco =@elenco){
s/bin/lib/;
}
print "Nuovo elenco\n@newelenco\n";