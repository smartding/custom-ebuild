# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit go-module git-r3

DESCRIPTION="Jump helps you navigate faster by learning your habits"
HOMEPAGE="https://github.com/gsamokovarov/jump"

EGIT_REPO_URI="https://github.com/gsamokovarov/jump.git"

LICENSE="MIT"
SLOT="0"
IUSE=""
KEYWORDS="~amd64"

src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}

src_install() {
	dobin ${PN}
	doman man/${PN}.1
	dodoc README.md
}
