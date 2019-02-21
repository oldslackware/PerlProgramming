 #!/usr/bin/perl
 use warnings;
 use strict;
 {
  package Ford;
      
        sub nome2{#Costruttore con due argomenti
	my $var1=shift;
	my $var2=shift;
	bless(\$var2,$var1);
	}
      
	sub nome{#Costruttore con un argomento
	my $class=shift;
	ref $class ? $$class : "Una $class sconosciuta";
	#Se $class è un istanza,restituisci il nome,
	#se invece è una classe restituisci la generica
    }
    
	sub info{
	my $class=shift;
        print "La Ford ",$class->nome,",ha una garanzia di ",$class->garanzia," anni\n";
	}
	
	sub alimentazione{
	 my $class=shift;
	 my $aliment=shift;
	 print "La ",$class->nome,",è alimentata a $aliment\n",
	}
  
}

 {
  package Fiesta;
  use vars qw(@ISA);
  @ISA=qw(Ford);
  sub garanzia{"tre";}
}
{
 package Focus;
 use vars qw(@ISA);
 @ISA=qw(Ford);
 sub garanzia{"cinque";}
}

#Chiamo la sub nome2 creando un istanza di Fiesta
my $fiestaref=Fiesta->nome2("Fiesta 1.2 16V Titanium 3p");
print 'x'x 100,"\n";
$fiestaref->info;
#Passo un parametro alla sub alimentazione
$fiestaref->alimentazione("Benzina");
print 'x'x 100,"\n";
#Ora mi creo una focus
my $focusref=Focus->nome2("Focus 1.6 TDCi Ikon 3p");
$focusref->info;
$focusref->alimentazione("Gasolio");
print 'x'x 100,"\n";