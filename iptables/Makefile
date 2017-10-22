.PHONY: install uninstall

TARGET := ${DESTDIR}/usr/share/pcaping-strong-iptables
IPTABLES := ${DESTDIR}/etc/iptables.up.rules.d
USR_SBIN := ${DESTDIR}/usr/sbin
SYSTEMD := ${DESTDIR}/usr/lib/systemd/system

all:

install:
	install -d ${IPTABLES}
	install -d ${USR_SBIN}
	install -d ${SYSTEMD}
	install -d ${TARGET}
	install -t ${TARGET} iptables.up.rules
	install -t ${TARGET} iptables.down.rules
	install -t ${TARGET} ip6tables.up.rules
	install -t ${TARGET} ip6tables.down.rules
	install -t ${USR_SBIN} iptables-user-restore
	install -t ${SYSTEMD} iptables.service

uninstall:
	rm -f ${TARGET}/iptables.up.rules
	rm -f ${TARGET}/iptables.down.rules
	rm -f ${TARGET}/ip6tables.up.rules
	rm -f ${TARGET}/ip6tables.down.rules
	rm -rf ${IPTABLES}
	rm -f ${USR_SBIN}/iptables-user-restore
	rm -r ${SYSTEMD}/iptables.service
