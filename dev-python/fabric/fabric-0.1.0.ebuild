# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/gwibber/gwibber-0.7.ebuild,v 1.2 2008/12/15 04:54:21 neurogeek Exp $

inherit distutils

DESCRIPTION="Fabric is a simple pythonic remote deployment tool"
HOMEPAGE="http://www.nongnu.org/fab/index.html"
SRC_URI="http://savannah.nongnu.org/download/fab/fab-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/python"

S=${WORKDIR}/fab-${PV}
