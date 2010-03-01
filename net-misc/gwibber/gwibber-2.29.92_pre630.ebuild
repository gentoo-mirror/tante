# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="Gwibber is an open source microblogging client for GNOME developed with Python and GTK."
HOMEPAGE="https://launchpad.net/gwibber"
#SRC_URI="http://launchpad.net/gwibber/trunk/${PV}/+download/${P}.tar.gz"
# right now there's no "official" bin file, I mirrored it
SRC_URI="http://packages.monkeycode.org/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-python/dbus-python-0.82.4
	>=dev-python/pywebkitgtk-1.0.2
	>=dev-python/notify-python-0.1.1
	>=dev-python/simplejson-2.0.4
	>=dev-python/egenix-mx-base-2.0.5
	>=dev-python/feedparser-4.1
	>=dev-python/gconf-python-2.22.3
	>=dev-python/pyxdg-0.15
	>=gnome-base/librsvg-2.22.2
	dev-python/python-distutils-extra
	dev-python/imaging
	dev-python/mako
	!dev-python/distutils-extra
	gnome-extra/desktopcouch
	dev-python/pycurl
	dev-python/libwnck-python
"

DEPEND="virtual/python"

S=${WORKDIR}/${P}

src_install() {
	distutils_src_install
	elog "If gwibber does not open outbound links in your browser, you have"
	elog "to set the respective GCONF keys to point to your browser."
	elog "To set Gwibber to open Links in firefox run the following two commands:"
	elog " " 
	elog "gconftool-2 -s -t string /desktop/gnome/url-handlers/http/command 'firefox %s'"
	elog "gconftool-2 -s -t string /desktop/gnome/url-handlers/https/command 'firefox %s'"
	elog
	elog "Or use gconf-editor to edit the respective keys."
}
