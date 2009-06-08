# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Libpurple plug-in supporting microblogging services like
Twitter and Identi.ca"
HOMEPAGE="http://code.google.com/p/microblog-purple/"
SRC_URI="http://microblog-purple.googlecode.com/files/mbpurple-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="net-im/pidgin"
RDEPEND="${DEPEND}"

src_compile() {
	cd "mbpurple-${PV}"
	emake || die "emake failed"
}

src_install() {
	cd "mbpurple-${PV}"
	emake install DESTDIR=${D} || die "emake install failed"
}
