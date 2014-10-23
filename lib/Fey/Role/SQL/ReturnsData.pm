package Fey::Role::SQL::ReturnsData;
BEGIN {
  $Fey::Role::SQL::ReturnsData::VERSION = '0.40';
}

use strict;
use warnings;
use namespace::autoclean;

use Moose::Role;

# This doesn't actually work with Fey::Role::SetOperation in the mix.
#requires 'select_clause_elements';

1;

# ABSTRACT: A role for SQL queries which return data (SELECT, UNION, etc)



=pod

=head1 NAME

Fey::Role::SQL::ReturnsData - A role for SQL queries which return data (SELECT, UNION, etc)

=head1 VERSION

version 0.40

=head1 SYNOPSIS

  use Moose;

  with 'Fey::Role::ReturnsData';

=head1 DESCRIPTION

Classes which do this role represent an object which returns data from a
query, such as C<SELECT>, C<UNION>, etc.

=head1 METHODS

This role provides no methods.

Returns true.

=head1 BUGS

See L<Fey> for details on how to report bugs.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2011 by Dave Rolsky.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)

=cut


__END__

