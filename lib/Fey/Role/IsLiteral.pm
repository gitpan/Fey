package Fey::Role::IsLiteral;
BEGIN {
  $Fey::Role::IsLiteral::VERSION = '0.40';
}

use strict;
use warnings;
use namespace::autoclean;

use Moose::Role;

requires 'sql';

sub id {
    return $_[0]->sql('Fey::FakeDBI');
}

1;

# ABSTRACT: A role for things that are literals



=pod

=head1 NAME

Fey::Role::IsLiteral - A role for things that are literals

=head1 VERSION

version 0.40

=head1 SYNOPSIS

  use Moose;

  with 'Fey::Role::IsLiteral';

=head1 DESCRIPTION

This role provides an C<id()> method that simply calls C<<
$object->sql('Fey::FakeDBI') >>.

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

