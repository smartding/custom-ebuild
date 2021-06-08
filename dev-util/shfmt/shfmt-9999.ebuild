# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 go-module

DESCRIPTION="shell script formatter"
HOMEPAGE="https://github.com/mvdan/sh"

EGIT_REPO_URI="https://github.com/mvdan/sh.git"

LICENSE="MIT"
SLOT="0"
IUSE="+man"
KEYWORDS="~amd64"

BDEPEND="
	man? ( app-text/scdoc )
"

src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}

src_compile() {
	go build -v -ldflags "-s -w" -o "${PN}" "./cmd/shfmt"
	use man && scdoc <./cmd/shfmt/shfmt.1.scd > shfmt.1
}

src_install() {
	dobin ${PN}
	use man && doman shfmt.1
}
