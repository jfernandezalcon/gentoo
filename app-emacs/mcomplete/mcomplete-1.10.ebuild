# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit elisp

DESCRIPTION="An improved interface to minibuffer completion"
HOMEPAGE="http://bmonkey.la.coocan.jp/emacs/index-en.html
	http://www.emacswiki.org/emacs/McompleteMode"
# taken from http://homepage1.nifty.com/bmonkey/emacs/elisp/mcomplete.el
SRC_URI="https://dev.gentoo.org/~ulm/distfiles/${P}.el.xz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

SITEFILE="50${PN}-gentoo.el"
