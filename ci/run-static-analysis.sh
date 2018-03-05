#!/bin/sh
#
# Perform various static code analysis checks
#

. ${0%/*}/lib-travisci.sh

case "$jobname" in
ClangStaticAnalysis)
	scan-build -analyze-headers --status-bugs make
	;;
CocciStaticAnalysis)
	make coccicheck
	;;
esac

save_good_tree
