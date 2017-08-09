#! /usr/bin/perl

=head1 DESCRIPTION

		Написать функцию перемешивания массива в произвольном порядке (несколько вариантов).

=head1 AUTHOR

		Dmitriy Chekanov		chekanov.d@gmail.com

=cut

use strict;
use warnings;

my @array = getArray(30,10);

print "Before: ";
foreach (@array) {
	print $_." ";
}
print "\n";

@array = shuffleArray(@array);

print "After: ";
foreach (@array) {
	print $_." ";
}
print "\n";

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

sub shuffleArray {
	my @array = @_;
	my ($a, $b);
	for my $i (0 .. 50) {
		$a = int(rand($#array));
		$b = $#array - int(rand($#array));
		($array[$a],$array[$b]) = ($array[$b],$array[$a]);
	}
	return @array;
}