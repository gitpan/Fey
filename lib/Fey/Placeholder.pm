package Fey::Placeholder;
BEGIN {
  $Fey::Placeholder::VERSION = '0.40';
}

use strict;
use warnings;
use namespace::autoclean;

use Fey::Types;

use Moose;
use MooseX::SemiAffordanceAccessor;
use MooseX::StrictConstructor;

with 'Fey::Role::Comparable';

sub sql {
    return '?';
}

sub sql_or_alias { goto &sql; }

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: Represents a placeholder



=pod

=head1 NAME

Fey::Placeholder - Represents a placeholder

=head1 VERSION

version 0.40

=head1 SYNOPSIS

  my $placeholder = Fey::Placeholder->new()

=head1 DESCRIPTION

This class represents a placeholder in a SQL statement.

For now, this always means the string C<?>, but in the future it may
allow for numbered or named placeholders.

=head1 METHODS

This class provides the following methods:

=head2 Fey::Placeholder->new()

This method creates a new C<Fey::Placeholder> object.

=head2 $placeholder->sql()

=head2 $placeholder->sql_or_alias()

Returns the appropriate SQL snippet.

=head1 ROLES

This class does the C<Fey::Role::Comparable> role.

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

