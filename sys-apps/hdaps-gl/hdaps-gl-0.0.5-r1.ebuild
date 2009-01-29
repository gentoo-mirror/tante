# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="OpenGL visualization for HDAPS data"
HOMEPAGE="http://hdaps.sourceforge.net"
SRC_URI="http://switch.dl.sourceforge.net/sourceforge/hdaps/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE="invert"

DEPEND=""
RDEPEND=""

src_unpack() {
	unpack ${P}.tar.gz
	use invert && epatch "${FILESDIR}"/${PF}-invert.patch
}

src_compile() {
	emake || die "make failed"
}

src_install() {
	dobin ${PN}
}

pkg_postinst() {
	echo
	ewarn "this application can only work on a thinkpad with"
	ewarn "a movement sensor and the hdaps module loaded"
	ewarn "see also: http://thinkwiki.org/wiki/HDAPS"
	echo
}

