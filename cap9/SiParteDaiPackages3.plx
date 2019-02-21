#!/usr/bin/perl
use warnings;
use strict;

sub Sistemista::linux{
print "Sono un sistemista e opero su sistemi Gnu-Linux\n";
}
sub Programmatore::web{
print "Sono un programmatore che mi occupo di application web\n";
}
sub Persona::ingegnereinformatico{
print "Sono un ingegnere informatico e lavoro in un call-center\n";
}
#Con -> faccio in modo che ogni Packages si riferisca alla propria subroutine.
Sistemista->linux;
Programmatore->web;
Persona->ingegnereinformatico;
