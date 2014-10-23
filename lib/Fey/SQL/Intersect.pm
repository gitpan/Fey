package Fey::SQL::Intersect;
BEGIN {
  $Fey::SQL::Intersect::VERSION = '0.40';
}

use strict;
use warnings;
use namespace::autoclean;

use Moose;

with 'Fey::Role::SetOperation' => { keyword => 'INTERSECT' };

with 'Fey::Role::SQL::Cloneable';

1;

# ABSTRACT: Represents an INTERSECT operation



=pod

=head1 NAME

Fey::SQL::Intersect - Represents an INTERSECT operation

=head1 VERSION

version 0.40

=head1 SYNOPSIS

  my $intersect = Fey::SQL->new_intersect;

  $intersect->intersect( Fey::SQL->new_select->select(...),
                         Fey::SQL->new_select->select(...),
                         Fey::SQL->new_select->select(...),
                         ...
                       );

  $intersect->order_by( $part_name, 'DESC' );
  $intersect->limit(10);

  print $intersect->sql($dbh);

=head1 DESCRIPTION

This class represents an INTERSECT set operator.

=head1 METHODS

See L<Fey::Role::SetOperation> for all methods.

=head1 ROLES

=over 4

=item * L<Fey::Role::SetOperation>

=item * L<Fey::Role::SQL::Cloneable>

=back

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

