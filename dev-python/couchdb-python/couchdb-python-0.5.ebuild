# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="Python library for working with CouchDB"
HOMEPAGE="http://code.google.com/p/couchdb-python/"
SRC_URI="http://pypi.python.org/packages/source/C/CouchDB/CouchDB-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-python/httplib2
        dev-python/simplejson
		dev-db/couchdb"
RDEPEND="${DEPEND}"

S=${WORKDIR}/CouchDB-${PV}
