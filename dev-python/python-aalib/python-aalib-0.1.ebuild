# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="Python-aalib is a set of bindings for AAlib, an ASCII art library."
HOMEPAGE="http://jwilk.nfshost.com/software/python-aalib.html"
SRC_URI="http://pypi.python.org/packages/source/p/python-aalib/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/python
		media-libs/aalib"

