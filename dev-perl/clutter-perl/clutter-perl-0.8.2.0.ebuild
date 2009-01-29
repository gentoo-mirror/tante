# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit perl-module versionator clutter

DESCRIPTION="Perl bindings for Clutter"

KEYWORDS="~amd64 ~x86"
IUSE="cairo doc gstreamer gtk"

RDEPEND="${RDEPEND}
		dev-lang/perl
		dev-perl/glib-perl
		cairo? ( media-libs/clutter-cairo )
		gstreamer? ( media-libs/clutter-gst )
		gtk? ( media-libs/clutter-gtk )"

DEPEND="${RDEPEND}
		${DEPEND}
		dev-perl/extutils-depends
		dev-perl/extutils-pkgconfig
		doc? ( dev-libs/libxslt )
		cairo? ( dev-perl/Cairo )
		gstreamer? ( dev-perl/GStreamer )
		gtk? ( dev-perl/gtk2-perl )"

MY_PV="$(get_major_version).$(delete_all_version_separators \
$(get_after_major_version))"
S="${WORKDIR}/Clutter-${MY_PV}"
