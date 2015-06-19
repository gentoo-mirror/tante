# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="The Moblin sound scheme"
HOMEPAGE="http://moblin.org"
SRC_URI="http://packages.monkeycode.org/${P}.tar.gz"

LICENSE="CCPL-Attribution-ShareAlike-3.0 LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install(){
	cp -r "${S}"/* "${D}"
}
