package Fdoc::Node::Variable;

use Moose;

extends 'Fdoc::Node::Variable';

has 'type' => (isa => 'String', is => 'rw'); # not required because there are some languages that aren't typed