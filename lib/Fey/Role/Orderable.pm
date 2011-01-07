package Fey::Role::Orderable;
BEGIN {
  $Fey::Role::Orderable::VERSION = '0.39';
}

use strict;
use warnings;
use namespace::autoclean;

use Moose::Role;

sub is_orderable {1}

1;

# ABSTRACT: A role for things that can be part of a ORDER BY clause



=pod

=head1 NAME

Fey::Role::Orderable - A role for things that can be part of a ORDER BY clause

=head1 VERSION

version 0.39

=head1 SYNOPSIS

  use Moose;

  with 'Fey::Role::Orderable';

=head1 DESCRIPTION

Classes which do this role represent an object which can be part of a
C<ORDER BY> clause.

=head1 METHODS

This role provides the following methods:

=head2 $object->is_orderable()

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

