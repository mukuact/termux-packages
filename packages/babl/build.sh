TERMUX_PKG_HOMEPAGE=https://gegl.org/babl/
TERMUX_PKG_DESCRIPTION="Dynamic pixel format translation library"
TERMUX_PKG_LICENSE="LGPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
_MAJOR_VERSION=0.1
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.90
TERMUX_PKG_SRCURL=https://download.gimp.org/pub/babl/${_MAJOR_VERSION}/babl-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=6e2ebb636f37581588e3d02499b3d2f69f9ac73e34a262f42911d7f5906a9243
TERMUX_PKG_DEPENDS="littlecms"
TERMUX_PKG_BREAKS="babl-dev"
TERMUX_PKG_REPLACES="babl-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-Denable-gir=false"
