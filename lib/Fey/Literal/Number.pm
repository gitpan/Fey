package Fey::Literal::Number;
BEGIN {
  $Fey::Literal::Number::VERSION = '0.39';
}

use strict;
use warnings;
use namespace::autoclean;

use Fey::Types qw( Num );

use Moose;
use MooseX::SemiAffordanceAccessor;
use MooseX::StrictConstructor;

with 'Fey::Role::Comparable', 'Fey::Role::Selectable', 'Fey::Role::IsLiteral';

has 'number' => (
    is       => 'ro',
    isa      => Num,
    required => 1,
);

sub BUILDARGS {
    my $class = shift;

    return { number => shift };
}

sub sql { $_[0]->number() }

sub sql_with_alias { goto &sql }

sub sql_or_alias { goto &sql }

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: Represents a literal number in a SQL statement



=pod

=head1 NAME

Fey::Literal::Number - Represents a literal number in a SQL statement

=head1 VERSION

version 0.39

=head1 SYNOPSIS

  my $number = Fey::Literal::Number->new($number)

=head1 DESCRIPTION

This class represents a literal number in a SQL statement, either an
integer or float.

=head1 INHERITANCE

This module is a subclass of C<Fey::Literal>.

=head1 METHODS

This class provides the following methods:

=head2 Fey::Literal::Number->new($number)

This method creates a new C<Fey::Literal::Number> object representing
the number passed to the constructor.

=head2 $number->number()

Returns the number as passed to the constructor.

=head2 $number->id()

The id for a number is always just the number itself.

=head2 $number->sql()

=head2 $number->sql_with_alias()

=head2 $number->sql_or_alias()

Returns the appropriate SQL snippet.

=head1 ROLES

This class does the C<Fey::Role::Selectable> and
C<Fey::Role::Comparable> roles.

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

