#! /usr/bin/perl

=head1 DESCRIPTION

		Функция склонения: 1 новость, 2 новости, 10 новостей. Использовать тернарный оператор ?: 

=head1 AUTHOR

		Dmitriy Chekanov		chekanov.d@gmail.com

=cut

use strict;
use warnings;


# First try

my $count = 100;
my $last1 = substr $count, -1;
my $last2 = $count % 100;
my $word = ($last1 == 1 && $last2 != 11) ? "Новость" : ($last1 > 1 && $last1 < 5 && ($last2 < 5 || $last2 > 20)) ? "Новости" : "Новостей";
print $count." ".$word."\n";

# Second try

sub title {
	my $count = shift;
	my @words = qw/Новость Новости Новостей/;
	my @form = qw/2 0 1 1 1 2/;
	return $count." ".$words[ ($count%100 > 4 && $count%100<20) ? 2 : $form[($count%10 < 5) ? $count%10 : 5] ];
}

print title(11)."\n";