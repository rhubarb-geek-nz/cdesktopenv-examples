CDE_INSTALLATION_TOP = /usr/dt

all clean test:
	set -e; \
	for d in lib dtaction dtcalendar dtdnd dthelp dtscreen dtsession dtterm dtcalendar dtwidget dtwsm tt; \
	do \
		if test -d "$(CDE_INSTALLATION_TOP)/examples/$$d" || test "$$d" = "lib"; \
		then \
			cd "$$d" ; \
			CDE_INSTALLATION_TOP=$(CDE_INSTALLATION_TOP) $(MAKE) -f Makefile.$$(uname) $@ ; \
			cd .. ; \
		fi; \
	done

dthelp.run:
	set -e; \
	cd dthelp; \
	CDE_INSTALLATION_TOP=$(CDE_INSTALLATION_TOP) $(MAKE) -f Makefile.$$(uname) run
