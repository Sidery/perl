#! /usr/bin/perl

=head1 DESCRIPTION

		Сгенерировать ключ - 10 символов из набора 'A'-'Z','a'-'z','0'-'9'.

=head1 AUTHOR

		Dmitriy Chekanov		chekanov.d@gmail.com

=cut

use strict;
use warnings;

my @chars = ("A" .. "Z","a" .. "z",0 .. 9);
my ($N,$key);

for my $i (0 .. 10) {
	$N=int(rand($#chars+1));
	$key .= $chars[$N];
}

print $key."\n";