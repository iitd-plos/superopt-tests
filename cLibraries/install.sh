#!/bin/bash
set -x
# Unofficial Mirrors
# git submodule add https://github.com/bminor/glibc
# git submodule add https://github.com/ensc/dietlibc
# git submodule add https://github.com/bminor/musl
# git submodule add https://github.com/freebsd/freebsd-src
# git submodule add https://github.com/openbsd/src
# git submodule add https://github.com/NetBSD/src
# git submodule add https://github.com/bminor/newlib

# Official repositories
# git submodule add git://sourceware.org/git/glibc.git
# git submodule add https://github.com/ensc/dietlibc
# git submodule add git://git.musl-libc.org/musl
# git submodule add https://github.com/freebsd/freebsd-src freebsd
# git submodule add https://github.com/openbsd/src openbsd
# git submodule add https://github.com/NetBSD/src netbsd
# git submodule add git://sourceware.org/git/newlib-cygwin.git newlib
# git submodule add git://uclibc-ng.org/git/uclibc-ng

GLIBC="2.37"
wget http://mirror.hostiran.ir/gnu/gnu/libc/glibc-"${GLIBC}".tar.gz -O glibc.tar.gz

wget https://github.com/ensc/dietlibc/archive/refs/heads/master.zip -O dietlibc.zip

wget https://musl.libc.org/releases/musl-1.2.3.tar.gz -O musl.tar.gz

wget https://github.com/freebsd/freebsd-src/archive/refs/heads/main.zip -O freebsd.zip

wget https://github.com/openbsd/src/archive/refs/heads/master.zip -O openbsd.zip

wget https://github.com/NetBSD/src/archive/refs/heads/trunk.zip -O netbsd.zip

wget https://sourceware.org/pub/newlib/newlib-4.3.0.20230120.tar.gz -O newlib.tar.gz

wget https://downloads.uclibc-ng.org/releases/1.0.42/uClibc-ng-1.0.42.tar.gz -O uClibc.tar.gz

# klibc does not have an updated git repository
KLIBC_LATEST="2.0.12"
wget https://mirrors.edge.kernel.org/pub/linux/libs/klibc/2.0/klibc-"${KLIBC_LATEST}".tar.gz -O klibc.tar.gz

mkdir glibc && tar -zxf glibc.tar.gz -C glibc --strip-components=1
unzip -q dietlibc.zip && mv dietlibc-master dietlibc
mkdir musl && tar -zxf musl.tar.gz -C musl --strip-components=1
unzip -q freebsd.zip && mv freebsd-src-main freebsd
# cd freebsd && rm -rf sys contrib share tools tests && cd ..
unzip -q openbsd.zip && mv src-master openbsd
# cd openbsd && rm -rf gnu sys share regress && cd ..
unzip -q netbsd.zip && mv src-trunk netbsd
# cd netbsd && rm -rf external sys tests && cd ..
mkdir newlib && tar -zxf newlib.tar.gz -C newlib --strip-components=1
mkdir uClibc && tar -zxf uClibc.tar.gz -C uClibc --strip-components=1
mkdir klibc && tar -zxf klibc.tar.gz -C klibc --strip-components=1

rm *zip *.tar.gz
