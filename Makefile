.PHONY: install

all:
	$(MAKE) -C iptables
	$(MAKE) -C ulogd
	$(MAKE) -C logrotate

install:
	$(MAKE) -C iptables install
	$(MAKE) -C ulogd install
	$(MAKE) -C logrotate install
