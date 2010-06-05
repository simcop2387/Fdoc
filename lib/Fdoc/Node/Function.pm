package Fdoc::Node::Function;

use Moose;

extends Fdoc::Node;

has parameters => (isa => 'ArrayRef[Fdoc::Node::Variable]', is => 'rw', required => 1);