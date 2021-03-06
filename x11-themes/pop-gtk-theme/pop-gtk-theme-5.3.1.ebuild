# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="System76 Pop GTK+ Theme"
HOMEPAGE="https://github.com/pop-os/gtk-theme"
SRC_URI="https://github.com/pop-os/gtk-theme/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="CC-BY-SA-4.0 GPL-3 LGPL-2.1 LGPL-3"

SLOT="0"
KEYWORDS="~amd64 ~x86"

BDEPEND="dev-lang/sassc"

RDEPEND="dev-libs/glib:2
   x11-libs/gtk+:2
   x11-libs/gtk+:3
   x11-themes/gtk-engines-murrine"

# Build-time dependencies that need to be binary compatible with the system
# being built (CHOST). These include libraries that we link against.
# The below is valid if the same run-time depends are required to compile.
DEPEND="${RDEPEND}"

# The following src_configure function is implemented as default by portage, so
# you only need to call it if you need a different behaviour.
src_unpack() {
   unpack ${A}
   mv gtk-theme-${PV} ${P}
}
