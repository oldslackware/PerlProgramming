#!/usr/bin/perl 
use warnings;
use strict;

print "Split serve per prendere una parola tra due caratteri specifici\n";
print "Con join ivece uniamo le parole con un dato carattere da noi specificato\n";
sleep(4);
print "Informazioni contenute nel file /etc/password\n";
my $info="mark:x:10026:10028::/home/mark:/bin/bash";
print "$info\n";
print "Mediante split otteniamo\n";
sleep(2);
my @myinfo=split /:/,  $info;
print "Login name:$myinfo[0]\n";
sleep(1);
print "User id:$myinfo[2]\n";
sleep(1);
print "My directory:$myinfo[5]\n";
sleep(1);
print "My bash:$myinfo[6]\n";
sleep(2);
print "Mediante join otteniamo\n";
my $infomod=join "-", @myinfo; 
print "Informazioni originali\n$info\n";
sleep(2);
print "INFORMAZIONI MODIFICATE\n$infomod\n";
sleep(3);
