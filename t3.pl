#! /usr/bin/perl

=head1 DESCRIPTION

		Есть ли элемент в массиве (несколько вариантов).

=head1 AUTHOR

		Dmitriy Chekanov		chekanov.d@gmail.com

=cut

use strict;
use warnings;

my @array = getArray(20, 10);
my $element;
if (defined($ARGV[0])) {
	$element = $ARGV[0];
} else {
	$element = 5; # or any random element
}

# First method
foreach (@array) {
	if ($_ == $element) {
		print "Found (fm)\n";
		last;
	}
}

# Second method
foreach (@array) {
	m/^$element$/ and print "Found";
}


sub getArray {
	# First argument is range of array
	my $range = shift;
	# Second argument is size of array
	my $size = shift;

	my @tempArray;
	for my $i (0 .. $size) {
		@tempArray[$i] = int(rand($range));
	}

	return @tempArray;
}