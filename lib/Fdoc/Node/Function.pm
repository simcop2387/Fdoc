package Fdoc::Node::Function;

use Moose;

extends Fdoc::Node;

has parameters => (isa => 'ArrayRef[Fdoc::Node::Variable]', is => 'rw', required => 1);
has type => (isa => 'ArrayRef[Fdoc::Node]');