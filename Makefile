TARGET := iphone:clang:14.5:14.5
INSTALL_TARGET_PROCESSES = MobileSlideShow
#THEOS_PACKAGE_SCHEME=rootless
DEBUG = 0
FINALPACKAGE = 1
SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LoopVideos

$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_LDFLAGS = -ld_classic

include $(THEOS_MAKE_PATH)/tweak.mk
