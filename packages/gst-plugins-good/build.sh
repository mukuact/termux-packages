TERMUX_PKG_HOMEPAGE=https://gstreamer.freedesktop.org/
TERMUX_PKG_DESCRIPTION="GStreamer Good Plug-ins"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.20.0
TERMUX_PKG_SRCURL=https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=2d119c15ab8c9e79f8cd3c6bf582ff7a050b28ccae52ab4865e1a1464991659c
TERMUX_PKG_DEPENDS="gst-plugins-base, libandroid-shmem, libcaca, libsoup, libjpeg-turbo, libpng, libflac, libbz2, libvpx, pulseaudio, libmp3lame, gstreamer, libogg, zlib"
# pcre needed by glib. libxml2 needed by libsoup
TERMUX_PKG_BUILD_DEPENDS="glib, pcre, libxml2"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dcairo=disabled
-Dexamples=disabled
-Dgdk-pixbuf=disabled
-Doss=disabled
-Doss4=disabled
-Dtests=disabled
-Dv4l2=disabled
-Daalib=disabled
"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-shmem"
}
