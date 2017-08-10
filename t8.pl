#! /usr/bin/perl

=head1 DESCRIPTION

		Формирование байтов в КБ, МБ, ТБ без составных частей. 1500 => 1 КБ.

=head1 AUTHOR

		Dmitriy Chekanov		chekanov.d@gmail.com

=cut

use strict;
use warnings;


my $bytes = 1024;

my @size = qw/bytes KBs MBs GBs TBs/; 
my $i = 0;
while ($bytes >= 1024) {
	$bytes = int($bytes/1024);
	$i++;
}

print $bytes." ".$size[$i]."\n";
