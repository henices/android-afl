LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#PREFIX      ?= /usr/local
#HELPER_PATH  = $(PREFIX)/lib/afl

#CFLAGS      := -O3 -funroll-loops
#CFLAGS      += -Wall -D_FORTIFY_SOURCE=2 -g -Wno-pointer-sign

#libdislocator.so: libdislocator.so.c ../config.h
#	$(CC) $(CFLAGS) -shared -fPIC $< -o $@ $(LDFLAGS)
#
LOCAL_CLANG     := true
LOCAL_CC        := /usr/bin/clang-3.8
LOCAL_SRC_FILES := libdislocator.so.c
LOCAL_CFLAGS    := $(common_CFLAGS)
LOCAL_CFLAGS    += -O3 -funroll-loops -Wall -D_FORTIFY_SOURCE=2 -g -shared -fPIC
LOCAL_MODULE    := libdislocator

include $(BUILD_SHARED_LIBRARY)
