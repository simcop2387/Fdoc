package Fdoc::Input::Parser::Farnsworth;

use Moose;

with 'Fdoc::Input::Parser';

sub supported
{
	return [".frns"];
}

1;