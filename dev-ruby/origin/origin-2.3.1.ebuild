# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

USE_RUBY="ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_RECIPE_TEST="rspec3"

RUBY_FAKEGEM_EXTRADOC="README.md CHANGELOG.md"

RUBY_FAKEGEM_GEMSPEC="${PN}.gemspec"

GITHUB_USER="mongoid"
GITHUB_PROJECT="${PN}"

MY_PV="${PV/_rc/.rc}"

inherit ruby-fakegem

DESCRIPTION="Origin is a simple DSL for generating MongoDB selectors and options"
HOMEPAGE="http://mongoid.org/"
SRC_URI="https://github.com/${GITHUB_USER}/${GITHUB_PROJECT}/archive/v${MY_PV}.tar.gz -> ${GITHUB_PROJECT}-${MY_PV}.tar.gz"
LICENSE="MIT"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_bdepend "
	test? (
		=dev-ruby/activesupport-4*
		>=dev-ruby/i18n-0.6:0.6
		dev-ruby/tzinfo
	)"
