#!/usr/bin/perl
use warnings;
#Con gli apici scriviamo senza problema un percorso \
print 'C:\Windows\Settings' ,"\n";
#Con le virgolette bisogna prestare attenzione
print "C:\Windows\Settings" ,"\n";
#Adesso è corretto
print "C:\\Windows\\Settings" ,"\n";
