package Fdoc::Node::Struct;

use Moose;

extends Fdoc::Node;

has 'elements' => (isa => 'ArrayRef[Fdoc::Node]', is => 'rw');



1;