# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit distutils

MY_P=${PN}_${PV/_pre/~svn}

DESCRIPTION="Python implementation of the OAuth protocol for authentication."
HOMEPAGE="http://code.google.com/p/oauth"
SRC_URI="mirror://ubuntu/pool/main/p/${PN}/${MY_P}.orig.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}/${MY_P}
