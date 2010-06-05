package Fdoc::Node;

use Moose;
use Moose::Util::TypeConstraints;

subtype 'Visibility'
      => as 'String'
      => where { $_ eq 'private' || $_ eq 'public' || $_ eq 'protected' || $_ eq 'friendly' };

#what do they have in common? dunno yet
has 'file' => (isa => 'String', is => 'rw', required => 1);
has 'line' => (isa => 'Int', is => 'rw', required => 1); 
has 'name' => (isa => 'String', is => 'rw', required => 1);

1;