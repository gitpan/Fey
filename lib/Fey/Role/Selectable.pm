package Fey::Role::Selectable;
BEGIN {
  $Fey::Role::Selectable::VERSION = '0.36';
}

use strict;
use warnings;
use namespace::autoclean;

use Moose::Role;

sub is_selectable {1}

1;

# ABSTRACT: A role for things that can go in a SELECT clause



=pod

=head1 NAME

Fey::Role::Selectable - A role for things that can go in a SELECT clause

=head1 VERSION

version 0.36

=head1 SYNOPSIS

  use Moose;

  with 'Fey::Role::Selectable';

=head1 DESCRIPTION

Classes which do this role represent an object which can go in a
C<SELECT> clause.

=head1 METHODS

This role provides the following methods:

=head2 $object->is_selectable()

Returns true.

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

