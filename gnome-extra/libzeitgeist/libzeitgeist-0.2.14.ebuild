# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="This project provides a client library for applications that want
to interact with the Zeitgeist daemon. The library is written in C using glib
and provides an asynchronous GObject oriented API."
HOMEPAGE="https://launchpad.net/libzeitgeist"
SRC_URI="http://launchpad.net/libzeitgeist/0.2/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	emake DESTDIR="${D}" PREFIX="/usr/" || die "emake failed!"
}

src_install(){
	emake DESTDIR="${D}" PREFIX="/usr" install || die "emake install failed!"
}
