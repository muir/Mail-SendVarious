
require 5.008;
use ExtUtils::MakeMaker;
WriteMakefile(
	NAME		=> 'Mail::SendVarious',
	DISTNAME	=> 'Mail-SendVarious',
	VERSION_FROM	=> 'lib/Mail/SendVarious.pm',
	dist		=> { COMPRESS => 'gzip', SUFFIX => 'gz' },
	PREREQ_PM	=> {
		'Net::SMTP'	=> 0,
		'IO::Handle'	=> 0,
	},
);

package MY;

sub postamble {
    <<'END_OF_POSTAMBLE';

pm_to_blib: README

README: lib/Mail/SendVarious.pod
	pod2text  lib/Mail/SendVarious.pod >README

END_OF_POSTAMBLE
}
