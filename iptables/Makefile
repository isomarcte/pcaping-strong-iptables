.PHONY: install uninstall

ETC := ${DESTDIR}/etc
IPTABLES := ${DESTDIR}/etc/iptables.up.rules.d
USR_SBIN := ${DESTDIR}/usr/sbin
SYSTEMD := ${DESTDIR}/usr/lib/systemd/system

install:
	install -d ${ETC}
	install -d ${IPTABLES}
	install -d ${USR_SBIN}
	install -d ${SYSTEMD}
	install -t ${ETC} iptables.up.rules
	install -t ${ETC} iptables.down.rules
	install -t ${USR_SBIN} iptables-user-restore
	install -t ${SYSTEMD} iptables.service

uninstall:
	rm -f ${ETC}/iptables.up.rules
	rm -f ${ETC}/iptables.down.rules
	rm -rf ${IPTABLES}
	rm -f ${USR_SBIN}/iptables-user-restore
	rm -r ${SYSTEMD}/iptables.service
