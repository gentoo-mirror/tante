# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $


EAPI=3

inherit eutils mono autotools

DESCRIPTION="Some GTK+ bindings that GTK# doesn't supply"
HOMEPAGE="http://github.com/mono/gtk-sharp-beans/"
SRC_URI="http://packages.monkeycode.org/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-dotnet/gio-sharp"
RDEPEND="${DEPEND}"

src_prepare () {
	eautoreconf 
}

src_configure () {
	cd ${WORKDIR}/${PN}-${PV}/
	./configure --prefix=/usr
}

src_compile() {
	make
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
	dodoc AUTHORS ChangeLog NEWS README
	mono_multilib_comply
}
