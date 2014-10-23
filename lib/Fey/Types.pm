package Fey::Types;
BEGIN {
  $Fey::Types::VERSION = '0.40';
}

use strict;
use warnings;

use base 'MooseX::Types::Combine';

__PACKAGE__->provide_types_from(
    qw( MooseX::Types::Moose Fey::Types::Internal )
);

1;

# ABSTRACT: Types for use in Fey



=pod

=head1 NAME

Fey::Types - Types for use in Fey

=head1 VERSION

version 0.40

=head1 DESCRIPTION

This module defines a whole bunch of types used by the Fey core
classes. None of these types are documented for external use at the
present, though that could change in the future.

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

