# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson git-r3

DESCRIPTION="System76 Pop icon Theme"
HOMEPAGE="https://github.com/pop-os/icon-theme"

EGIT_REPO_URI="https://github.com/pop-os/icon-theme.git"

LICENSE="CC-BY-SA-4.0"

SLOT="0"
KEYWORDS="~amd64"

src_unpack() {
	git-r3_src_unpack
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
