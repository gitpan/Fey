package Fey::Role::TableLike;
BEGIN {
  $Fey::Role::TableLike::VERSION = '0.40';
}

use strict;
use warnings;
use namespace::autoclean;

use Moose::Role;

with 'Fey::Role::Joinable';

1;

# ABSTRACT: A role for things that are like a table



=pod

=head1 NAME

Fey::Role::TableLike - A role for things that are like a table

=head1 VERSION

version 0.40

=head1 SYNOPSIS

  use Moose;

  with 'Fey::Role::TableLike';

=head1 DESCRIPTION

This role has no methods or attributes of its own. It does consume the
L<Fey::Role::Joinable> role.

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

