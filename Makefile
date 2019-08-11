PREFIX ?= /usr/local
_INSTDIR ?= $(DESTDIR)$(PREFIX)
BINDIR ?= $(_INSTDIR)/bin
MANDIR ?= $(_INSTDIR)/share/man
TASK_DONE = echo -e "\n✓ $@ done\n"

.PHONY: test

all:
	@echo "Usage:"
	@echo "  make install"
	@echo "  make reinstall"
	@echo "  make uninstall"
	@echo "  make test"

help:
	$(MAKE) all
	@$(TASK_DONE)

install:
	install -d -m 0755 $(BINDIR)
	install -m 0755 git-quick-stats $(BINDIR)/git-quick-stats
	$(MAKE) man
	@$(TASK_DONE)

uninstall:
	rm -f $(BINDIR)/git-quick-stats
	rm -f $(MANDIR)/man1/git-quick-stats.1
	@$(TASK_DONE)

reinstall:
	@curl -sO https://raw.githubusercontent.com/arzzen/git-quick-stats/master/git-quick-stats
	@curl -sO https://raw.githubusercontent.com/arzzen/git-quick-stats/master/git-quick-stats.1
	$(MAKE) install
	@$(TASK_DONE)

man:
	install -d -m 0755 $(MANDIR)/man1/
	install -m 0644 git-quick-stats.1 $(MANDIR)/man1/

test:
	tests/commands_test.sh
	@$(TASK_DONE)
