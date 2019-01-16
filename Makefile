PREFIX ?= /usr/local
TASK_DONE = echo -e "\n✓ $@ done\n"
# files that need mode 755
EXEC_FILES=git-quick-stats

.PHONY: test

all:
	@echo "usage: make install"
	@echo "       make reinstall"
	@echo "       make uninstall"
	@echo "       make test"

help:
	$(MAKE) all
	@$(TASK_DONE)

install:
	mkdir -p $(PREFIX)/bin
	install -m 0755 $(EXEC_FILES) $(PREFIX)/bin/$(EXEC_FILES)
	git config --global alias.quick-stats '! $(PREFIX)/bin/$(EXEC_FILES)'
	$(MAKE) man
	@$(TASK_DONE)

uninstall:
	test -d $(PREFIX)/bin && \
	cd $(PREFIX)/bin && \
	rm -f $(EXEC_FILES) && \
	git config --global --unset alias.quick-stats
	@$(TASK_DONE)

reinstall:
	@curl -s https://raw.githubusercontent.com/arzzen/git-quick-stats/master/git-quick-stats > git-quick-stats
	$(MAKE) uninstall && \
	$(MAKE) install
	@$(TASK_DONE)

man:
	install -g 0 -o 0 -m 0644 git-quick-stats.1 /usr/share/man/man1/

test:
	tests/commands_test.sh
	@$(TASK_DONE)
