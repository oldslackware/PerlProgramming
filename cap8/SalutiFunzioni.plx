#!/usr/bin/perl
use strict;
sub benvenuto{
	print "Benvenuto nel mondo delle subroutine.\n";
}
&benvenuto if defined &benvenuto;
print "Ma qualora non avessi capito...\n";
&benvenuto;
print "Saluto dalla subroutine...\n";
&saluto;
sub saluto{
	print "Ciao dall'ultima subroutine..\n";
}
print "Quasi quasi ti faccio risalutare.\n"
&saluto;
