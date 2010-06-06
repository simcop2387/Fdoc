package Fdoc::Input::Parser;

use Moose::Role;

sub parse
{
	die "No parsing method defined";
}

sub supported
{
	return [];
}

1;