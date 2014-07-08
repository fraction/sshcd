PREFIX ?= /usr/local
BIN ?= /bin
DATA ?= /share
BINDIR ?= $(PREFIX)$(BIN)
DATADIR ?= $(PREFIX)$(DATA)

COMMAND ?= sshcd
PKGNAME ?= sshcd

.PHONY: all
all:
	@echo Nothing to compile

.PHONY: install
install:
	install -dm755 "$(DESTDIR)$(BINDIR)"
	install -m755 sshcd "$(DESTDIR)$(BINDIR)/$(COMMAND)"
	install -dm755 "$(DESTDIR)$(DATADIR)/licenses/$(PKGNAME)"
	install -m644 LICENSE "$(DESTDIR)$(DATADIR)/licenses/$(PKGNAME)/LICENSE"

.PHONY: uninstall
uninstall:
	-unlink -- "$(DESTDIR)$(BINDIR)/$(COMMAND)"
	-unlink -- "$(DESTDIR)$(DATADIR)/licenses/$(PKGNAME)/LICENSE"
	-rmdir -- "$(DESTDIR)$(DATADIR)/licenses/$(PKGNAME)"

.PHONY: clean
clean:
	@echo Nothing to clean
