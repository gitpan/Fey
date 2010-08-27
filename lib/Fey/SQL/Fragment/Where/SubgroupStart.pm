package Fey::SQL::Fragment::Where::SubgroupStart;
BEGIN {
  $Fey::SQL::Fragment::Where::SubgroupStart::VERSION = '0.36';
}

use strict;
use warnings;
use namespace::autoclean;

use Moose;

my $Paren = '(';

sub sql {
    return $Paren;
}

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: Represents the start of a subgroup in a WHERE clause



=pod

=head1 NAME

Fey::SQL::Fragment::Where::SubgroupStart - Represents the start of a subgroup in a WHERE clause

=head1 VERSION

version 0.36

=head1 DESCRIPTION

This class represents the start of a subgroup in a WHERE clause

It is intended solely for internal use in L<Fey::SQL> objects, and as
such is not intended for public use.

=head1 BUGS

See L<Fey> for details on how to report bugs.

=head1 AUTHOR

  Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2010 by Dave Rolsky.

This is free software, licensed under:

  The Artistic License 2.0

=cut


__END__

