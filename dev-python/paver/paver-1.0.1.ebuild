# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="Paver is a Python-based build/distribution/deployment
scripting tool along the lines of Make or Rake."
HOMEPAGE="http://www.blueskyonmars.com/projects/paver/"
SRC_URI="http://pypi.python.org/packages/source/P/Paver/Paver-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-lang/python"
RDEPEND="dev-lang/python"

S=${WORKDIR}/Paver-${PV}

