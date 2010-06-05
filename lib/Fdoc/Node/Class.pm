package Fdoc::Node::Struct;

use Moose;

extends 'Fdoc::Node::Role'; #has all the common stuff for us already

has 'extends' => (isa => 'ArrayRef[Fdoc::Node::Class]', is => 'rw'); #parent classes

1;