#! /usr/bin/perl

=head1 DESCRIPTION

		Дан массив чисел. Требуется вывести через пробел числа без повторений, отсортированный по возрастанию.

=head1 AUTHOR

		Dmitriy Chekanov		chekanov.d@gmail.com

=cut

use strict;
use warnings;

my @array = getArray(10,50);
@array = shellSort(@array);
showUnique(@array);


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

sub showUnique {
	my @array = @_;

	print my $last = shift(@array);
	foreach (@array) {
		if ($last != $_) {
			$last = $_;
			print " ".$_;
		} 
	}
	print "; \n";
}

sub shellSort {
	# Argument is array, which we must sort
	my @array = @_;

	for (my $N = int($#array/2); $N > 0; $N = int($N/2)) {
		for (my $i = 0; $i <= ($#array-$N); $i++)
		{
			while ($i >= 0 && $array[$i]>$array[$i+$N]) {
				($array[$i],$array[$i+$N]) = ($array[$i+$N],$array[$i]);
				$i--;
			}
		}
	}

	return @array;
}
