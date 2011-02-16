
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Better SQL Generation Through Perl',
  'AUTHOR' => 'Dave Rolsky <autarch@urth.org>',
  'BUILD_REQUIRES' => {
    'DBI' => '0',
    'Fey::Test' => '0.05',
    'File::Temp' => '0',
    'Test::MockObject' => '0',
    'Test::More' => '0.88'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Fey',
  'EXE_FILES' => [],
  'LICENSE' => 'artistic_2',
  'NAME' => 'Fey',
  'PREREQ_PM' => {
    'Exception::Class' => '0',
    'Exporter' => '0',
    'List::AllUtils' => '0',
    'Moose' => '0.90',
    'MooseX::Params::Validate' => '0.08',
    'MooseX::Role::Parameterized' => '0.04',
    'MooseX::SemiAffordanceAccessor' => '0.03',
    'MooseX::StrictConstructor' => '0.07',
    'MooseX::Types' => '0',
    'Scalar::Util' => '0',
    'Task::Weaken' => '0.99',
    'Tie::IxHash' => '0',
    'namespace::autoclean' => '0'
  },
  'VERSION' => '0.40',
  'test' => {
    'TESTS' => 't/*.t t/Column/*.t t/SQL/*.t t/Table/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



