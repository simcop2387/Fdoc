package Fdoc::Node;

use Moose;

#what do they have in common? dunno yet
has 'file' => (isa => 'String', is => 'rw', required => 1);
has 'line' => (isa => 'Int', is => 'rw', required => 1); 
has 'name' => (isa => 'String', is => 'rw', required => 1);


1;