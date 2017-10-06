.PHONY: install

install:
	$(MAKE) -C iptables
	$(MAKE) -C ulogd
	$(MAKE) -C logrotate
