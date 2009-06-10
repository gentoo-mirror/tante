# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="SuRF is an Object Oriented - RDF Mapper based on the popular
rdflib python library"
HOMEPAGE="http://code.google.com/p/surfrdf/"
SRC_URI="http://packages.monkeycode.org/${PF}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="dev-python/rdflib"

S=${WORKDIR}/${PF}

src_install(){
	distutils_src_install
}
