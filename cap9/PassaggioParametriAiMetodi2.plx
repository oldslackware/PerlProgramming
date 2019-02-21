 #!/usr/bin/perl
 use warnings;
 use strict;
 {
  package Ford;
      
        sub nome2{#Costruttore con due argomenti
	my $var1=shift;
	my $var2=shift;
	my $var3={Modello=>$var2,Cavalli=>$var1->default_cavalli};#Hash
	bless $var3,$var1;
	}
      
	sub nome{#Costruttore con un argomento
	my $class=shift;
	ref $class
	? $class->{Modello}#Guarda qui the change 
	: "Una $class sconosciuta";
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
	 print "La ",$class->nome,",alimentata a $aliment",
	}
	sub default_cavalli{"Non specificato"};
  
}

 {
  package Fiesta;
  use vars qw(@ISA);
  @ISA=qw(Ford);
  sub garanzia{"tre";}
  sub default_cavalli{"60"};
}
{
 package Focus;
 use vars qw(@ISA);
 @ISA=qw(Ford);
 sub garanzia{"cinque";}
 sub default_cavalli{"109"};
}

#Chiamo la sub nome2 creando un istanza di Fiesta
my $fiestaref=Fiesta->nome2("Fiesta 1.2 16V Titanium 3p");
print 'x'x 100,"\n";
$fiestaref->info;
#Passo un parametro alla sub alimentazione
$fiestaref->alimentazione("Benzina");
print " possiede ",$fiestaref->default_cavalli," cavalli\n";
print $fiestaref->nome,"\n";
print 'x'x 100,"\n";
#Ora mi creo una focus
my $focusref=Focus->nome2("Focus 1.6 TDCi Ikon 3p");
$focusref->info;
$focusref->alimentazione("Gasolio");
print " possiede ",$focusref->default_cavalli," cavalli\n";
print 'x'x 100,"\n";