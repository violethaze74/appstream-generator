#!/bin/sh
#
# Install AppStream Generator build dependencies
#
set -e
set -x

# Install rpmfusion repositories
dnf --assumeyes --quiet install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm --eval %fedora).noarch.rpm

# update caches
dnf makecache

# install dependencies
dnf --assumeyes --quiet --setopt=install_weak_deps=False install \
    curl \
    gdb \
    gcc \
    gcc-c++ \
    gcc-gdc \
    git-core \
    meson \
    ffmpeg \
    gettext \
    gir-to-d \
    gnupg \
    gperf \
    docbook-dtds \
    docbook-style-xsl \
    ldc \
    libasan \
    libstemmer-devel \
    libubsan \
    'pkgconfig(cairo)' \
    'pkgconfig(freetype2)' \
    'pkgconfig(fontconfig)' \
    'pkgconfig(gdk-pixbuf-2.0)' \
    'pkgconfig(glib-2.0)' \
    'pkgconfig(gobject-2.0)' \
    'pkgconfig(gio-2.0)' \
    'pkgconfig(glibd-2.0)' \
    'pkgconfig(gobject-introspection-1.0)' \
    'pkgconfig(libarchive)' \
    'pkgconfig(libcurl)' \
    'pkgconfig(libsoup-2.4)' \
    'pkgconfig(librsvg-2.0)' \
    'pkgconfig(libxml-2.0)' \
    'pkgconfig(lmdb)' \
    'pkgconfig(packagekit-glib2)' \
    'pkgconfig(pango)' \
    'pkgconfig(protobuf-lite)' \
    'pkgconfig(Qt5Core)' \
    qt5-linguist \
    'pkgconfig(yaml-0.1)' \
    sed \
    vala \
    xmlto \
    /usr/bin/node \
    /usr/bin/xsltproc \
    /usr/bin/yarnpkg
