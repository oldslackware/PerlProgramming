package Dog;
sub new{       # The Dog's constructor
       my $class = shift;
       my $ref = {};
       return bless ($ref, $class);
    }
    sub set_attributes{   # Giving the Cat some attributes,
                          # a name and a voice
       my $self = shift;
       $self->{"Name"} = "Lassie";
       $self->{"Talk"}= "Baua Baua ";
    }
    sub speak {         # Retrieving the Cat's attributes
       my $self = shift;
       print "$self->{Talk} I'm the dog called $self->{Name}.\n";
    }
    1;