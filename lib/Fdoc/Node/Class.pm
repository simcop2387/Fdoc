package Fdoc::Node::Struct;

use Moose;

extends Fdoc::Node;

has 'attributes' => (isa => 'ArrayRef[Fdoc::Node::Variable]', is => 'rw');
has 'methods' => (isa => 'ArrayRef[Fdoc::Node::Function]', is => 'rw');


1;