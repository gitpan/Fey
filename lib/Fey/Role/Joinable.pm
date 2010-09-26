package Fey::Role::Joinable;
BEGIN {
  $Fey::Role::Joinable::VERSION = '0.37';
}

use strict;
use warnings;
use namespace::autoclean;

use Moose::Role;

sub is_joinable { $_[0]->schema() ? 1 : 0 }

1;

# ABSTRACT: A role for things that can be part of a JOIN BY clause



=pod

=head1 NAME

Fey::Role::Joinable - A role for things that can be part of a JOIN BY clause

=head1 VERSION

version 0.37

=head1 SYNOPSIS

  use Moose;

  with 'Fey::Role::Joinable';

=head1 DESCRIPTION

Classes which do this role represent an object which can be part of a
C<FROM> clause.

=head1 METHODS

This role provides the following methods:

=head2 $object->is_joinable()

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

