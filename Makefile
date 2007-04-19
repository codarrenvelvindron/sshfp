#
# A basic Makefile for sshfp
# by Jacob Appelbaum <jacob@appelbaum.net>
#
#

BIN     = $(DESTDIR)/usr/bin
MAN     = $(DESTDIR)/usr/share/man/man1

all:
	@echo should build man page in text
install:
	install -d $(BIN)
	install sshfp $(BIN)
	install -d $(MAN)
	install sshfp.1 $(MAN)
man-page:
	nroff -man sshfp.1 > sshfp.1.txt
clean:
	rm sshfp.1.txt
dist-clean:
	@echo Nothing to dist-clean - This is a python script