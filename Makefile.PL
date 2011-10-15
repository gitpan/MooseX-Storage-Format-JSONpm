
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "a format role for MooseX::Storage using JSON.pm",
  "AUTHOR" => "Ricardo SIGNES <rjbs\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Moose" => 0,
    "MooseX::Storage" => 0,
    "Test::More" => "0.96",
    "strict" => 0,
    "utf8" => 0,
    "warnings" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "MooseX-Storage-Format-JSONpm",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "MooseX::Storage::Format::JSONpm",
  "PREREQ_PM" => {
    "JSON" => 2,
    "MooseX::Role::Parameterized" => 0,
    "MooseX::Storage" => 0,
    "namespace::autoclean" => 0
  },
  "VERSION" => "0.093092",
  "test" => {
    "TESTS" => "t/*.t"
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



