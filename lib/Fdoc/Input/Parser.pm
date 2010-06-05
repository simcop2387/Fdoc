package Fdoc::Input::Parser;

use Moose::Role;

has 'supported' => (isa => 'ArrayRef[String]', is => 'ro');

sub parse
{
	die "No parsing method defined";
}