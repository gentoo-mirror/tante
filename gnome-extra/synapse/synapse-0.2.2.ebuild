# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Synapse is a semantic launcher written in Vala that you can use to
start applications as well as find and access relevant documents and files by
making use of the Zeitgeist engine."
HOMEPAGE="https://launchpad.net/synapse-project"
SRC_URI="http://launchpad.net/synapse-project/0.2/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=dev-lang/vala-0.10
       x11-libs/gtkhotkey
	   dev-libs/json-glib
	   gnome-extra/zeitgeist
	   gnome-extra/libzeitgeist"
RDEPEND="${DEPEND}"

src_compile() {
	emake DESTDIR="${D}" PREFIX="/usr/" || die "emake failed!"
}

src_install(){
	emake DESTDIR="${D}" PREFIX="/usr" install || die "emake install failed!"
}
