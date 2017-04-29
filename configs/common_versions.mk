# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

HEXAGON_BRANCH=hex-7.1

# Hexagon RELEASE VERSION
HEXAGON_VERSION_MAJOR = 2
HEXAGON_VERSION_MINOR = 4
HEXAGON_VERSION_MAINTENANCE =
HEX = HexagonROM

VERSION := $(HEXAGON_VERSION_MAJOR).$(HEXAGON_VERSION_MINOR)$(HEXAGON_VERSION_MAINTENANCE)

ifndef HEXAGON_BUILDTYPE
    ifdef RELEASE_TYPE
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^HEXAGON_||g')
        HEXAGON_BUILDTYPE := $(RELEASE_TYPE)
    else
        HEXAGON_BUILDTYPE := OFFICIAL
    endif
endif

ifdef HEXAGON_BUILDTYPE
    ifeq ($(HEXAGON_BUILDTYPE), RELEASE)
        HEXAGON_VERSION := $(HEX)-V$(VERSION)-$(shell date -u +%Y%m%d)-RELEASE-$(HEXAGON_BUILD)
    endif
    ifeq ($(HEXAGON_BUILDTYPE), OFFICIAL)
        HEXAGON_VERSION := $(HEX)-V$(VERSION)-$(shell date -u +%Y%m%d)-OFFICIAL-$(HEXAGON_BUILD)
    endif
    ifeq ($(HEXAGON_BUILDTYPE), EXPERIMENTAL)
        HEXAGON_VERSION := $(HEX)-V$(VERSION)-$(shell date -u +%Y%m%d)-EXPERIMENTAL-$(HEXAGON_BUILD)
    endif
    ifeq ($(HEXAGON_BUILDTYPE), UNOFFICIAL)
        HEXAGON_VERSION := $(HEX)-V$(VERSION)-$(shell date -u +%Y%m%d)-UNOFFICIAL-$(HEXAGON_BUILD)
    endif
else
#We reset back to UNOFFICIAL
        HEXAGON_VERSION := $(HEX)-V$(VERSION)-$(shell date -u +%Y%m%d)-UNOFFICIAL-$(HEXAGON_BUILD)
endif



PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(HEXAGON_VERSION) \
    ro.hexagon.version=$(VERSION) \
    ro.hexagon.build.type=$(HEXAGON_BUILDTYPE)

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hexagon.branch=$(HEXAGON_BRANCH) \
    ro.download.url=http://download.droidvn.com/ \
    ro.hex.name=HexagonRom \
    ro.romstats.buildtype=$(HEXAGON_BUILDTYPE) \
    ro.hexagon.version=$(VERSION) \
    ro.romstats.tframe=1 \
    ro.romstats.askfirst=1 \
    ro.romstats.ga=UA-48128535-2

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1
