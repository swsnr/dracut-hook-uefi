PREFIX = /usr
DESTDIR =

HOOK_SRC = 90-dracut-uefi-install.hook 91-dracut-uefi-remove.hook
SCRIPT_SRC = dracut-uefi

.PHONY: install
install:
	install -Dm644 -t $(DESTDIR)/$(PREFIX)/share/libalpm/hooks $(HOOK_SRC)
	install -Dm755 -t $(DESTDIR)/$(PREFIX)/share/libalpm/scripts $(SCRIPT_SRC)
