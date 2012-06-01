use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Image::DCMTK',
    AUTHOR              => q{Robert Haxton <robert.haxton@gmail.com>},
    VERSION_FROM        => 'lib/Image/DCMTK.pm',
    ABSTRACT_FROM       => 'lib/Image/DCMTK.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
	'Format::PrintUtils' => 0,
	'Getopt::CommandLineExports' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Image-DCMTK-*' },
);
