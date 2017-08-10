#! /usr/bin/perl

=head1 DESCRIPTION

		Заменить в файле одно слово на другое. В итоге получить новый файл с изменениями.

=head1 AUTHOR

		Dmitriy Chekanov		chekanov.d@gmail.com

=cut

use strict;
use warnings;

open my $readFromFile, "<", "./tmp/1.txt" or die "Can't open file for read: $!";
open my $writeToFile, ">", "./tmp/2.txt" or die "Can't open file for write: $!";

my $oldWord = "word1";
my $newWord = "word2";

while (<$readFromFile>) {
	s/$oldWord/$newWord/g;
	print $writeToFile $_;
}

close $writeToFile;