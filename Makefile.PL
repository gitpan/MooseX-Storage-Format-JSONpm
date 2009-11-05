
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'MooseX-Storage-Format-JSONpm',
  NAME      => 'MooseX::Storage::Format::JSONpm',
  AUTHOR    => "Ricardo\ SIGNES\ \<rjbs\@cpan\.org\>",
  ABSTRACT  => "a\ format\ role\ for\ MooseX\:\:Storage\ using\ JSON\.pm",
  VERSION   => '0.093091',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "namespace::autoclean" => '0',
    "MooseX::Storage" => '0',
    "MooseX::Role::Parameterized" => '0',
    "JSON" => '2',
  },
  test => {TESTS => 't/*.t'}
);

