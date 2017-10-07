.PHONY: install

TARGET := ${DESTDIR}/etc/logrotate.d

all:

install:
	install -d ${TARGET}
	install -m 444 -t ${TARGET} iptables.conf
