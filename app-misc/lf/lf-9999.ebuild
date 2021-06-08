# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit go-module git-r3

DESCRIPTION="Terminal file manager written in Go"
HOMEPAGE="https://github.com/gokcehan/lf"
LICENSE="MIT"
SLOT="0"
IUSE=""

EGIT_REPO_URI="https://github.com/gokcehan/lf.git"

src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}

src_compile() {
	gen/build.sh
}

src_install() {
	dobin ${PN}
	doman ${PN}.1
	dodoc README.md
}
