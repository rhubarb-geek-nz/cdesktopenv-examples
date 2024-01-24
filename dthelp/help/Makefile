HELPSRC = helpdemo.htg
HELPVOL = helpdemo.sdl
HELPCHARSET = iso8859.1

all: $(HELPVOL)

$(HELPVOL): $(HELPSRC) helptag.opt graphics sounds
	PATH=$(CDE_INSTALLATION_TOP)/bin:$$PATH $(CDE_INSTALLATION_TOP)/bin/dthelptag -nooptimize -verbose $(HELPSRC)
#	dthelptag -verbose -charset $(HELPCHARSET) $(HELPSRC)

clean: 
	$(CDE_INSTALLATION_TOP)/bin/dthelptag -nooptimize -clean $(HELPSRC)
	rm -rf sounds graphics helpdemo.htg helptag.opt

helpdemo.htg helptag.opt:
	cp $(CDE_INSTALLATION_TOP)/examples/dthelp/help/$@ $@

graphics sounds:
	mkdir $@
	cp $(CDE_INSTALLATION_TOP)/examples/dthelp/help/$@/* $@
