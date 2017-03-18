prefix=/usr/local

# files that need mode 755
EXEC_FILES=git-quick-stats

all:
	@echo "usage: make install"
	@echo "       make uninstall"
	@echo "       make test"

install:
	install -m 0755 $(EXEC_FILES) $(prefix)/bin
	git config --global alias.quick-stats '! $(prefix)/bin/$(EXEC_FILES)'

uninstall:
	test -d $(prefix)/bin && \
	cd $(prefix)/bin && \
	rm -f $(EXEC_FILES) && \
	git config --global --unset alias.quick-stats

test:
	tests/commands_test.sh
