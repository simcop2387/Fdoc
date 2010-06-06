package Fdoc::Input;

use strict;
use warnings;

use Data::Dumper;
use Module::Find;

my %types; #file types, these get registered by the plugins

sub parsefile
{
	my $filename = shift;
	
	for my $ext (keys %types)
	{
		if ($filename =~ /$ext/)
		{
			$types{$ext}->parsefile($filename);
		}
	}
}

sub _init #init will fill out %types
{
	my @parsers = usesub 'Fdoc::Input::Parser';
	
	print Dumper(\@parsers);
	
	for my $module (@parsers)
	{
		my $parser = $module->new();
		
		for my $ext (@{$parser->supported()})
		{
			die "Multiple parsers for a single extension, don't know what to do yet" unless !exists($types{$ext});
			$types{$ext} = $parser if ($parser->does('Fdoc::Input::Parser'));
		}
	}
	
	print Dumper(\%types);
}

_init();

1;