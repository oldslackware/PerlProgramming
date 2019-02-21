 #!/usr/bin/perl
 use warnings;
 use strict;
 {
  package Ford;
      sub info{
       my $class=shift;
        print "La Ford ",$class,",ha un costo di ",$class->costo," euro\n";
     }
     sub nome{#Costruttore con un argomento
     my $self=shift;
     $$self;
    }
    sub nome2{#Costruttore con due argomenti
    my $var1=shift;
    my $var2=shift;
    bless(\$var2,$var1);
 }
}
 {
  package Fiesta;
  use vars qw(@ISA);
  @ISA=qw(Ford);
  sub costo{"9500";}
}
my $carref=Fiesta->nome2("Fiesta 1.2 Titanium");
$carref->info;
#OUTPUT
#La Ford Fiesta=SCALAR(0x81cd8e8),ha un costo di 9500 euro
#L'errore è dovuto al fatto che la sub info si aspetta il nome della classe e non un riferimento
#come abbiamo indicato nella sub nome2.