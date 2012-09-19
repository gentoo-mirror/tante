# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:

EAPI=4

inherit eutils

DESCRIPTION="Cloud music integration for your Linux desktop"
HOMEPAGE="https://launchpad.net/nuvola-player"
SRC_URI="https://launchpad.net/nuvola-player/2.0.x/${PV}/+download/${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RDEPEND="www-plugins/adobe-flash
		"
DEPEND="${RDEPEND}
		>=dev-lang/vala-0.12
		dev-util/intltool
		>=net-libs/libsoup-2.34
		>=x11-libs/gtk+-3.0
		>=dev-libs/libunique-0.9
		>=dev-libs/libgee-0.5
		>=net-libs/webkit-gtk-1.2"

src_configure(){
     ./waf configure --no-unity-quick-list --no-svg-optimization --prefix=${D}/usr
}

src_compile(){
     cd ${WORKDIR}/${P}/
	 ./waf build
}

src_install(){
     cd ${WORKDIR}/${P}
	 ./waf install
}
