# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

DESCRIPTION="Nerd Fonts is a project that patches developer targeted fonts with glyphs"
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts"
SRC_URI="https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Go-Mono.zip -> ${P}.zip"
S="${WORKDIR}"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

FONT_SUFFIX="ttf"
# Font name (ie. last part of FONTDIR).
FONT_PN="go-mono"
# Full path to installation directory.
FONTDIR="/usr/share/fonts/${FONT_PN}"

src_install() {
	font_src_install
}
