 #!/usr/bin/perl
 use warnings;
 use strict;
 {
  package Ford;
      sub info{
       my $class=shift;
        print "La Ford ",$class->nome,",ha un costo di ",$class->costo," euro\n";
     }
     sub nome{#Costruttore con un argomento
     my $class=shift;
     ref $class ? $$class : "Una $class sconoscita";
     #Se $class è un istanza,restituisci il nome,
     #se invece è una classe restituisci la generica
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

#Chiamo la sub nome con una classe
print Fiesta->nome,"\n";
#Chiamo la sub nome2
my $carref=Fiesta->nome2("Fiesta 1.2 Titanium");
#Adesso chiamo la sub nome con un riferimento
print $carref->nome,"\n";
#Adessi grazie alla modifica effettuata alla sub info di Ford non mi compare più l'errore precedente.
#print Fiesta->info,"\n";
$carref->info;