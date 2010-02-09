# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="A CouchDB on every desktop, and the code to help it happen."
HOMEPAGE="https://launchpad.net/desktopcouch"
SRC_URI="http://launchpad.net/${PN}/trunk/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-db/couchdb
dev-python/pyxdg
dev-python/gnome-keyring-python
dev-python/dbus-python
dev-python/twisted
dev-python/pygobject
dev-python/pygtk
dev-python/couchdb-python
dev-python/python-oauth
net-dns/avahi[python]
"
RDEPEND=""

S=${WORKDIR}/${P}

src_install() {
    distutils_src_install
    dobin "${FILESDIR}/desktopcouch-restart"
    elog "Your desktopcouch can be accessed at"
    elog "/home/YOURUSERNAME/.local/share/desktop-couch/couchdb.html"
    elog "If things seem to be broken, try running"
    elog "desktopcouch-restart"
    
}
