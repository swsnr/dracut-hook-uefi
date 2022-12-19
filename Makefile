PREFIX = /usr
DESTDIR =

HOOK_SRC = 90-dracut-uefi-install.hook 91-dracut-uefi-remove.hook
SCRIPT_SRC = dracut-uefi

INSTALL = install
SHFMT = shfmt
SHELLCHECK = shellcheck

.PHONY: install
install:
	$(INSTALL) -Dm644 -t $(DESTDIR)/$(PREFIX)/share/libalpm/hooks $(HOOK_SRC)
	$(INSTALL) -Dm755 -t $(DESTDIR)/$(PREFIX)/share/libalpm/scripts $(SCRIPT_SRC)

.PHONY: check
check:
	$(SHFMT) -i 4 -l -d $(SCRIPT_SRC)
	$(SHELLCHECK) -S style -o all $(SCRIPT_SRC)
