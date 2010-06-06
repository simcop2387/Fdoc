package Fdoc::Input::Parser::Farnsworth;

use Moose;
use Fdoc::Input::Parser::Farnsworth::Parser;

with 'Fdoc::Input::Parser';

sub supported
{
	return [".frns"];
}

sub parsefile
{
	my $filename = shift;
	open(my $fh, "<", ) or die "Couldn't open <$filename> $!";
	
	my $content = do {local $/; <$fh>};
	my $foo;
}

sub walk
{
	my $tree = shift;
	my $callbacks = shift;
	
	
}

1;