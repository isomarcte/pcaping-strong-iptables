# Overview #

This project provides a stateful linux firewall which block against ping floods, automatically blacklists IPs of requests which don't map to open ports, and permits only a subset of outbound traffic. It also has built in support for packet capturing bad traffic and rotating the pcap files so as to not exhaust disk space.

# Features #

* Provides a simple `systemd` daemon for those distributions which currently lake one.
* Provides a `ulogd.conf` file for recording pcaps of bad traffic or intrusion attempts.
* Provides a `logrotate` file for rotating the pcaps as needed to not exhaust disk space.
* Provides a very strong default firewall with inbound and outbound filtering and a mechanism for adding custom user rules.

# Caution #

Most distributions have mechanisms for configuring `iptables` already. This package doesn't _quite_ fit into any of them. It is intended to be patched slightly be whichever packaging system is using it. Mostly this involves changing a few paths and _excluding_ some files, as some distributions provide solutions for already.

A package for [Arch Linux][archlinux] is available [here][arch-package].

# Caveats #

* Currently it is not as configurable as it should be.

# Installation #

**Be careful**, you almost certainly don't want to install this directly, but rather use a package manager after adjusting this to fit your needs. An [Arch Linux package][arch-package] is available to build from source, and a Debian package is planned.

Installation is done with `make`.

```shell
$ make install
```

Staged installations are supported with `DESTDIR`

```shell
$ make DESTDIR=/tmp/staged install
```

# Configuration #

If you use the default installation and the provided `iptables.service` `systemd` daemon you can add custom rules to `/etc/iptables.up.rules.d/`. These will be loaded after the core firewall is loaded.

*Note*, the [Arch Linux package][arch-package] does not support this so as to fit into the already defined `iptables.service` provided by [Arch Linux][archlinux].

[archlinux]: https://www.archlinux.org/ "Arch LInux"
[arch-package]: https://github.com/isomarcte/pcaping-strong-iptables-archlinux-package "Arch Linux Package"
