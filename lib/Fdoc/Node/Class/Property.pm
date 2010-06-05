package Fdoc::Node::Class::Property;

use Moose;
use Moose::Util::TypeConstraints;

  subtype 'Visibility'
      => as 'String'
      => where { $_ eq 'private' || $_ eq 'public' || $_ eq 'protected' || $_ eq 'friendly' };

has 'visibility' => (isa => );