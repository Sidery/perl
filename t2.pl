#! /usr/bin/perl

=head1 DESCRIPTION

		Дано 2 массива, найти все уникальные элементы (двойная разность).

=head1 AUTHOR

		Dmitriy Chekanov		chekanov.d@gmail.com

=cut

use strict;
use warnings;

my @firstArray = getArray(20, 10);
my @secondArray = getArray(20, 10);
my %unic = ();

foreach (@firstArray,@secondArray) {
	if ($unic{$_}) {
		$unic{$_}++;
	} else {
		$unic{$_} = 1;
	}
} 

print "Unic elements: ";
while (my ($key, $value) = each (%unic)) {
	if ($value == 1) {
		print $key." ";
	}
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