package Fey::FakeDBI;
BEGIN {
  $Fey::FakeDBI::VERSION = '0.40';
}

use strict;
use warnings;

# This package allows us to use a DBI handle in id(). Even though we
# may not be quoting properly for a given DBMS, we will still generate
# unique ids, and that's all that matters.

sub quote_identifier {
    shift;

    if ( @_ == 3 ) {
        return q{"} . $_[1] . q{"} . q{.} . q{"} . $_[2] . q{"};
    }
    else {

        return q{"} . $_[0] . q{"};
    }
}

sub quote {
    my $text = $_[1];

    $text =~ s/"/""/g;
    return q{"} . $text . q{"};
}

1;

# ABSTRACT: Just enough of the DBI API to fool Fey



=pod

=head1 NAME

Fey::FakeDBI - Just enough of the DBI API to fool Fey

=head1 VERSION

version 0.40

=head1 SYNOPSIS

  my $select = Fey::SQL->new_select();

  $select->select(...)->where(...);

  print $select->sql( 'Fey::FakeDBI' );

=head1 DESCRIPTION

This class provides just enough of the C<DBI> API to use when Fey
needs a C<DBI> object for quoting SQL statements. It implements the
C<quote()> and C<quote_identifier()> methods only.

It exists solely to allow some internal API re-use for Fey, and you
should never need to use it explicitly.

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

