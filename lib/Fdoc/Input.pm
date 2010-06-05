package Fdoc::Input;

use strict;
use warnings;

use Module::Find;

my %types; #file types, these get registered by the plugins

sub parsefile
{
}

sub _init #init will fill out %types
{
	my @parsers = usesub 'Fdoc::Input';
	
	print Dumper(\@parsers);
	
}

1;