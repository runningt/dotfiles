enable_%:
	if [ -e ../bundle_all/$* ] ; then ln -fs ../bundle_all/$* ; else false ; fi
disable_%:
	if [ -h $* ] ; then rm $*  ; else false ; fi
