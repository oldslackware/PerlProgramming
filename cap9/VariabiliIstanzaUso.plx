 #!/usr/bin/perl
 use warnings;
 use strict;
 {
  package Ford;
      sub info{
       my $class=shift;
        print "La Ford ",$class,",ha un costo di ",$class->costo,"euro\n";
     }
 }
 {
  package Fiesta;
  use vars qw(@ISA);
  @ISA=qw(Ford);
  sub costo{"9500";}
  sub nome{#Costruttore che mi permette di restituire la variabile di istanza
  my $var=shift;
  $$var;
 }
 }
 my $car="Fiesta 1.2 Titanium";
 my $carref=\$car;
 bless($carref,"Fiesta");#Adessi grazie alla sub nome del package Fiesta posso accedere  alla variabile $car.
 print "La mia macchina è una ",$carref->nome," e ha un costo di ",$carref->costo," EURO.\n";
 