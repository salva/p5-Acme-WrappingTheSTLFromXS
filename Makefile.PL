use 5.022001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile( NAME          => 'Acme::WrappingTheSTLFromXS',
               VERSION_FROM  => 'lib/Acme/WrappingTheSTLFromXS.pm',
               ABSTRACT_FROM => 'lib/Acme/WrappingTheSTLFromXS.pm',
               AUTHOR        => 'Salvador Fandiño <sfandino@yahoo.com>',
               CC            => 'g++',
               LD            => 'g++',
               LIBS          => [''], # e.g., '-lm'
               DEFINE        => '', # e.g., '-DHAVE_SOMETHING'
               INC           => '-I.', # e.g., '-I. -I/usr/include/other'
               OBJECT        => '$(BASEEXT)$(OBJ_EXT) acme$(OBJ_EXT)',
);

sub MY::postamble {
    <<EOM;

acme$(OBJ_EXT): acme.cpp


EOM
}
