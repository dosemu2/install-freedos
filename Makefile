prefix ?= /usr/local

sysdir = $(prefix)/share/dosemu2-extras
libexecdir ?= $(prefix)/libexec

all:

install:
	install -m 0644 -D src/bat/*.bat -t $(DESTDIR)$(sysdir)/bat
	install -m 0644 -D src/bat/dosrc.d/* -t $(DESTDIR)$(sysdir)/bat/dosrc.d
	install -m 0755 -D src/dosemu-* -t $(DESTDIR)$(libexecdir)/dosemu

uninstall:
	$(RM) -r $(DESTDIR)$(sysdir)/bat
	$(RM) -r $(DESTDIR)$(libexecdir)/dosemu

rpm: fdpp.spec.rpkg
	rpkg local

deb:
	debuild -i -us -uc -b
