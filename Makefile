prefix ?= /usr/local

sysdir = $(prefix)/share/dosemu/commands
libexecdir = $(prefix)/libexec

all:

install:
	install -m 0644 -D src/bat/*.bat -t $(DESTDIR)$(sysdir)/dosemu
	install -m 0644 -D src/bat/dosrc.d/* -t $(DESTDIR)$(sysdir)/dosemu/dosrc.d
	install -m 0755 -D src/dosemu-* -t $(DESTDIR)$(libexecdir)/dosemu

rpm: fdpp.spec.rpkg
	git clean -fd
	rpkg local

deb:
	debuild -i -us -uc -b
