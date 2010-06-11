# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

DESCRIPTION="A Python Library for the Twitter (and Identi.ca) API. Includes
Oauth and Xauth authentification"
HOMEPAGE="http://github.com/joshthecoder/tweepy"
SRC_URI="http://github.com/joshthecoder/tweepy/tarball/${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/python-2.4
	    dev-python/simplejson"
RDEPEND="${DEPEND}"

