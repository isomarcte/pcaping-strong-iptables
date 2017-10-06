.PHONY: install

TARGET := ${DESTDIR}/etc/logrotate.d

install:
	install -d ${TARGET}
	install -m 444 -t ${TARGET} iptables.conf
