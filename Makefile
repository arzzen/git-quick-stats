PREFIX ?= /usr/local
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
	install -d -m 0755 $(PREFIX)/bin
	install -m 0755 git-quick-stats $(PREFIX)/bin/git-quick-stats
	$(MAKE) man
	@$(TASK_DONE)

uninstall:
	rm -f $(PREFIX)/bin/git-quick-stats
	rm -f $(PREFIX)/share/man/man1/git-quick-stats.1
	@$(TASK_DONE)

reinstall:
	@curl -s https://raw.githubusercontent.com/arzzen/git-quick-stats/master/git-quick-stats > git-quick-stats
	$(MAKE) uninstall && \
	$(MAKE) install
	@$(TASK_DONE)

man:
	install -d -m 0755 $(PREFIX)/share/man/man1/
	install -m 0644 git-quick-stats.1 $(PREFIX)/share/man/man1/

test:
	tests/commands_test.sh
	@$(TASK_DONE)
