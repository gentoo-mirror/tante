# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Zeitgeist is a service which logs the users's activities and events
(files opened, websites visites, conversations hold with other people, etc.) and
makes relevant information available to other applications. It is able to
establish relationships between items based on similarity and usage patterns."
HOMEPAGE="https://launchpad.net/zeitgeist"
SRC_URI="http://launchpad.net/zeitgeist/${PV}/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="media-libs/raptor
        dev-lang/python
		dev-python/pyxdg
		dev-python/dbus-python
		dev-python/pygobject"
RDEPEND="${DEPEND}"

