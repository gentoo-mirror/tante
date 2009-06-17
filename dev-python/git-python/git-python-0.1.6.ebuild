# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit python distutils

DESCRIPTION="git-python is a python library used to interact with Git
repositories."
HOMEPAGE="http://gitorious.org/git-python"
SRC_URI="http://pypi.python.org/packages/source/G/GitPython/GitPython-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

S=${WORKDIR}/GitPython-${PV}

src_install (){
	cd ${S}
	#mkdir -p ${D}/usr/$(get_libdir)/python${PYVER}/site-packages/
	#python setup.py install --prefix=${D}usr
	distutils_src_install
}
