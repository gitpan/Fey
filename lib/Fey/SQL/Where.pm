package Fey::SQL::Where;
BEGIN {
  $Fey::SQL::Where::VERSION = '0.36';
}

use strict;
use warnings;
use namespace::autoclean;

use Fey::Types;

use Moose;
use MooseX::SemiAffordanceAccessor;
use MooseX::StrictConstructor;

with 'Fey::Role::SQL::HasWhereClause';

with 'Fey::Role::SQL::HasBindParams' => { -excludes => 'bind_params' };

with 'Fey::Role::SQL::Cloneable';

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: Represents a "stand-alone" WHERE clause



=pod

=head1 NAME

Fey::SQL::Where - Represents a "stand-alone" WHERE clause

=head1 VERSION

version 0.36

=head1 SYNOPSIS

  my $sql = Fey::SQL->new( dbh => $dbh );

  # WHERE Machine.machine_id = 2
  $sql->where( $machine_id, '=', 2 );

=head1 DESCRIPTION

This class represents a stand-alone C<WHERE> clause. This allows you
pass a condition as part of an outer join.

=head1 METHODS

This class provides the following methods:

=head2 Constructor

To construct an object of this class, call C<< $query->where() >> on
a C<Fey::SQL> object.

=head2 $where->where()

See the L<Fey::SQL section on WHERE Clauses|Fey::SQL/WHERE Clauses>
for more details.

=head2 $where->bind_params()

See the L<Fey::SQL section on Bind Parameters|Fey::SQL/Bind
Parameters> for more details.

=head1 ROLES

This class does C<Fey::Role::SQL::HasWhereClause> role.

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

