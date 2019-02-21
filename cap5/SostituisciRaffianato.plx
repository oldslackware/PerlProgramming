#!/usr/bin/perl
use warnings;
use strict;

$_ = "rosso giallo blu rosso verde celeste giallo lilla viola";
print "Nostri colori di partenza \n", $_, "\n";

s/rosso(?! giallo)/nero/;
print "Sostituzione del secondo rosso con il nero\n", $_, "\n";

#Se il blu � preceduto dal giallo metti grigio
s/(?<=giallo )blu/grigio/;
print "Sostituzione del blu se � preceduto dal giallo con il grigio\n", $_, "\n";
#Se viene dopo
s/(?<!celeste )verde/azzurro/;
print "Sostituzione del verde se � seguito dal celeste con l'azzurro\n", $_, "\n";


