# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

HEXAGON_BRANCH=Oreo

# HEXAGON RELEASE VERSION
HEXAGON_VERSION_MAJOR = 3
HEXAGON_VERSION_MINOR = 0
HEXAGON_VERSION_MAINTENANCE =
HEX = HexagonROM
VERSION := $(HEXAGON_VERSION_MAJOR).$(HEXAGON_VERSION_MINOR)$(HEXAGON_VERSION_MAINTENANCE)

ifndef HEXAGON_BUILDTYPE
    ifdef RELEASE_TYPE
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^HEXAGON_||g')
        HEXAGON_BUILDTYPE := $(RELEASE_TYPE)
    else
        HEXAGON_BUILDTYPE := UNOFFICIAL
    endif
endif

ifdef HEXAGON_BUILDTYPE
    ifeq ($(HEXAGON_BUILDTYPE), OFFICIAL)
       HEXAGON_VERSION := $(HEX)-$(HEXAGON_VERSION_MAJOR).$(HEXAGON_VERSION_MINOR)-$(HEXAGON_BUILD)--OFFICIAL-$(shell date -u +%Y%m%d)
    endif
    ifeq ($(HEXAGON_BUILDTYPE), NIGHTLY)
        HEXAGON_VERSION := $(HEX)-$(HEXAGON_VERSION_MAJOR).$(HEXAGON_VERSION_MINOR)-$(HEXAGON_BUILD)--NIGHTLY-$(shell date -u +%Y%m%d)
    endif
    ifeq ($(HEXAGON_BUILDTYPE), EXPERIMENTAL)
        HEXAGON_VERSION := $(HEX)-$(HEXAGON_VERSION_MAJOR).$(HEXAGON_VERSION_MINOR)-$(HEXAGON_BUILD)--EXPERIMENTAL-$(shell date -u +%Y%m%d)
    endif
    ifeq ($(HEXAGON_BUILDTYPE), UNOFFICIAL)
        HEXAGON_VERSION := $(HEX)-$(HEXAGON_VERSION_MAJOR).$(HEXAGON_VERSION_MINOR)-$(HEXAGON_BUILD)-UNOFFICIAL-$(shell date -u +%Y%m%d)
    endif
else
#We reset back to UNOFFICIAL
        HEXAGON_VERSION := $(HEX)-$(HEXAGON_VERSION_MAJOR).$(HEXAGON_VERSION_MINOR)-$(HEXAGON_BUILD)--UNOFFICIAL-$(shell date -u +%Y%m%d)
endif


PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(HEXAGON_VERSION) \
    ro.hexagon.version=$(VERSION)-$(HEXAGON_BUILDTYPE)

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hexagon.branch=$(HEXAGON_BRANCH) \
    ro.romstats.name=HEXAGON \
    ro.romstats.buildtype=$(HEXAGON_BUILDTYPE) \
    ro.romstats.version=$(VERSION) \
    ro.romstats.tframe=1 \
    ro.romstats.askfirst=1 \
    ro.romstats.ga=UA-48128535-2

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1
