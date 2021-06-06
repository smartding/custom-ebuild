# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit go-module

DESCRIPTION="Jump helps you navigate faster by learning your habits"
HOMEPAGE="https://github.com/gsamokovarov/jump"
KEYWORDS="~amd64"
LICENSE="MIT"
SLOT="0"
IUSE=""

EGO_SUM=(
	"github.com/gsamokovarov/assert v0.0.0-20180414063448-8cd8ab63a335"
	"github.com/gsamokovarov/assert v0.0.0-20180414063448-8cd8ab63a335/go.mod"
)

go-module_set_globals
SRC_URI="https://github.com/gsamokovarov/jump/archive/v${PV}.tar.gz -> ${P}.tar.gz
		${EGO_SUM_SRC_URI}"

src_unpack() {
	echo $SRC_URI
	go-module_src_unpack
}

src_install() {
	dobin ${PN}
	doman man/${PN}.1
	dodoc README.md
}


