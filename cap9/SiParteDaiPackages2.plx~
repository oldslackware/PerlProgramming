#!/usr/bin/perl
use warnings;
#Da notare l'assensa di strict
sub Sistemista::info{
print "Sono un sistemista e opero su sistemi Gnu-Linux\n";
}
sub Programmatore::info{
print "Sono un programmatore che mi occupo di application web\n";
}
sub Persona::info{
print "Sono un ingegnere informatico e lavoro in un call-center\n";
}
my @folla=qw(Sistemista Programmatore Sistemista Persona Sistemista Persona);
my $i=0;
foreach $i (@folla){
&{$i."::info"};#riferimento ad ogni packages info
}
