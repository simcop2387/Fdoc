package Fdoc::Node::Class::Property;

use Moose::Role;

has 'visibility' => (isa => 'Visibility', is => 'rw', required => 1);