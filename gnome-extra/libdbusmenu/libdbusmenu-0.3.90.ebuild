# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Exports a menu structure over DBUS"
HOMEPAGE="https://launchpad.net/dbusmenu"
SRC_URI="http://launchpad.net/dbusmenu/0.4/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="sys-apps/dbus"
RDEPEND="${DEPEND}"

src_compile() {
	emake DESTDIR="${D}" PREFIX="/usr/" || die "emake failed!"
}

src_install(){
	emake DESTDIR="${D}" PREFIX="/usr" install || die "emake install failed!"
}
