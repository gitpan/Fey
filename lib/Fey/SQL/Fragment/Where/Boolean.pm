package Fey::SQL::Fragment::Where::Boolean;
BEGIN {
  $Fey::SQL::Fragment::Where::Boolean::VERSION = '0.37';
}

use strict;
use warnings;
use namespace::autoclean;

use Fey::Types qw( WhereBoolean );

use Moose;

has 'comparison' => (
    is       => 'ro',
    isa      => WhereBoolean,
    required => 1,
);

sub sql {
    return $_[0]->comparison();
}

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: Represents an AND or OR in a WHERE clause



=pod

=head1 NAME

Fey::SQL::Fragment::Where::Boolean - Represents an AND or OR in a WHERE clause

=head1 VERSION

version 0.37

=head1 DESCRIPTION

This class represents a subselect an AND or OR in a WHERE clause.

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

