# Copyright open-overlay 2015 by Alex

EAPI="5"
GCONF_DEBUG="no"

inherit gnome-games

DESCRIPTION="Five or More Game for GNOME"
HOMEPAGE="https://wiki.gnome.org/Apps/Five%20or%20more"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-libs/glib-2.32:2
	>=gnome-base/librsvg-2.32
	>=x11-libs/gtk+-3.12:3
"
RDEPEND="${COMMON_DEPEND}
	!<x11-themes/gnome-themes-standard-3.14
"
DEPEND="${COMMON_DEPEND}
	app-text/yelp-tools
	dev-util/appdata-tools
	>=dev-util/intltool-0.50
	sys-devel/gettext
	virtual/pkgconfig
"
