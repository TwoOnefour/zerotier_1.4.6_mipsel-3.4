# Common makefile -- loads make rules for each platform

OSTYPE=$(shell uname -s)

ifeq ($(OSTYPE),Darwin)
	include make-mac.mk
endif

ifeq ($(OSTYPE),Linux)
        CC=/usr/bin/mipsel-linux-gnu-gcc
        CXX=/usr/bin/mipsel-linux-gnu-g++
        CFLAGS=-std=c99 -Wall -O0 -g3 -Wall -fmessage-length=0 -march=1004kc -EL -static
        CXXFLAGS=-std=c++11 -DTEST -pthread -Wall -O0 -g3 -Wall  -fmessage-length=0 -fPIC -march=1004kc -EL -static
	STRIP=/usr/bin/mipsel-linux-gnu-strip
        include make-linux.mk
endif

ifeq ($(OSTYPE),FreeBSD)
	CC=clang
	CXX=clang++
	ZT_BUILD_PLATFORM=7
	include make-bsd.mk
endif
ifeq ($(OSTYPE),OpenBSD)
	CC=egcc
	CXX=eg++
	ZT_BUILD_PLATFORM=9
	include make-bsd.mk
endif

ifeq ($(OSTYPE),NetBSD)
	include make-netbsd.mk
endif
