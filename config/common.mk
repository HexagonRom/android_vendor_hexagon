PRODUCT_BRAND ?= HexagonRom

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0
endif

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=1
endif

ifeq ($(BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE),)
  PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.device.cache_dir=/data/cache
else
  PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.device.cache_dir=/cache
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/hexagon/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/hexagon/prebuilt/common/bin/50-hexagon.sh:system/addon.d/50-hexagon.sh \
    vendor/hexagon/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/hexagon/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Lineage-specific broadcast actions whitelist
PRODUCT_COPY_FILES += \
    vendor/hexagon/config/permissions/lineage-sysconfig.xml:system/etc/sysconfig/lineage-sysconfig.xml

# Lineage-specific broadcast actions whitelist
PRODUCT_COPY_FILES += \
    vendor/hexagon/config/permissions/lineage-sysconfig.xml:system/etc/sysconfig/lineage-sysconfig.xml

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/hexagon/prebuilt/common/bin/sysinit:system/bin/sysinit

ifneq ($(TARGET_BUILD_VARIANT),user)
# userinit support
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit
endif

# Copy all Hexagon-specific init rc files
$(foreach f,$(wildcard vendor/hexagon/prebuilt/common/etc/init/*.rc),\
	$(eval PRODUCT_COPY_FILES += $(f):system/etc/init/$(notdir $f)))

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# This is Hexagon!
PRODUCT_COPY_FILES += \
    vendor/hexagon/config/permissions/org.lineageos.android.xml:system/etc/permissions/org.lineageos.android.xml \
    vendor/hexagon/config/permissions/privapp-permissions-lineage.xml:system/etc/permissions/privapp-permissions-lineage.xml

# Include Hexagon audio files
include vendor/hexagon/config/hexagon_audio.mk

# Fix Google dialer
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/etc/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

ifneq ($(TARGET_DISABLE_LINEAGE_SDK), true)
# Lineage SDK
include vendor/hexagon/config/lineage_sdk_common.mk
endif

# TWRP
ifeq ($(WITH_TWRP),true)
include vendor/hexagon/config/twrp.mk
endif

# Bootanimation
PRODUCT_PACKAGES += \
    bootanimation.zip

# Required Hexagon packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    LineageParts \
    Development \
    Profiles

# Optional packages
PRODUCT_PACKAGES += \
    libemoji \
    LiveWallpapersPicker \
    PhotoTable \
    Terminal

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Custom Hexagon packages
PRODUCT_PACKAGES += \
    AudioFX \
    LineageSettingsProvider \
    Eleven \
    ExactCalculator \
    Jelly \
    LockClock \
    Trebuchet \
    Updater \
    WallpaperPicker \
    WeatherProvider

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Extra tools in Hexagon
PRODUCT_PACKAGES += \
    7z \
    bash \
    bzip2 \
    curl \
    fsck.ntfs \
    gdbserver \
    htop \
    lib7z \
    libsepol \
    micro_bench \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs \
    oprofiled \
    pigz \
    powertop \
    sqlite3 \
    strace \
    tune2fs \
    unrar \
    unzip \
    vim \
    wget \
    zip

# Custom off-mode charger
ifneq ($(WITH_HEXAGON_CHARGER),false)
PRODUCT_PACKAGES += \
    charger_res_images \
    lineage_charger_res_images \
    font_log.png \
    libhealthd.hexagon
endif

# ExFAT support
WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Storage manager
PRODUCT_PROPERTY_OVERRIDES += \
    ro.storage_manager.enabled=true

# These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    procmem \
    procrank

# Conditionally build in su
ifeq ($(WITH_SU),true)
PRODUCT_PACKAGES += \
    su
endif
endif

DEVICE_PACKAGE_OVERLAYS += vendor/hexagon/overlay/common

PRODUCT_VERSION_MAJOR = 3
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE := 0

ifeq ($(TARGET_VENDOR_SHOW_MAINTENANCE_VERSION),true)
    HEXAGON_VERSION_MAINTENANCE := $(PRODUCT_VERSION_MAINTENANCE)
else
    HEXAGON_VERSION_MAINTENANCE := 0
endif

# Set HEXAGON_BUILDTYPE from the env RELEASE_TYPE, for jenkins compat

ifndef HEXAGON_BUILDTYPE
    ifdef RELEASE_TYPE
        # Starting with "HEXAGON_" is optional
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^HEXAGON_||g')
        HEXAGON_BUILDTYPE := $(RELEASE_TYPE)
    endif
endif

# Filter out random types, so it'll reset to UNOFFICIAL
ifeq ($(filter RELEASE NIGHTLY SNAPSHOT EXPERIMENTAL,$(HEXAGON_BUILDTYPE)),)
    HEXAGON_BUILDTYPE :=
endif

ifdef HEXAGON_BUILDTYPE
    ifneq ($(HEXAGON_BUILDTYPE), SNAPSHOT)
        ifdef HEXAGON_EXTRAVERSION
            # Force build type to EXPERIMENTAL
            HEXAGON_BUILDTYPE := EXPERIMENTAL
            # Remove leading dash from HEXAGON_EXTRAVERSION
            HEXAGON_EXTRAVERSION := $(shell echo $(HEXAGON_EXTRAVERSION) | sed 's/-//')
            # Add leading dash to HEXAGON_EXTRAVERSION
            HEXAGON_EXTRAVERSION := -$(HEXAGON_EXTRAVERSION)
        endif
    else
        ifndef HEXAGON_EXTRAVERSION
            # Force build type to EXPERIMENTAL, SNAPSHOT mandates a tag
            HEXAGON_BUILDTYPE := EXPERIMENTAL
        else
            # Remove leading dash from HEXAGON_EXTRAVERSION
            HEXAGON_EXTRAVERSION := $(shell echo $(HEXAGON_EXTRAVERSION) | sed 's/-//')
            # Add leading dash to HEXAGON_EXTRAVERSION
            HEXAGON_EXTRAVERSION := -$(HEXAGON_EXTRAVERSION)
        endif
    endif
else
    # If HEXAGON_BUILDTYPE is not defined, set to UNOFFICIAL
    HEXAGON_BUILDTYPE := UNOFFICIAL
    HEXAGON_EXTRAVERSION :=
endif

ifeq ($(HEXAGON_BUILDTYPE), UNOFFICIAL)
    ifneq ($(TARGET_UNOFFICIAL_BUILD_ID),)
        HEXAGON_EXTRAVERSION := -$(TARGET_UNOFFICIAL_BUILD_ID)
    endif
endif

ifeq ($(HEXAGON_BUILDTYPE), RELEASE)
    ifndef TARGET_VENDOR_RELEASE_BUILD_ID
        HEXAGON_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(hexagon_BUILD)
    else
        ifeq ($(TARGET_BUILD_VARIANT),user)
            ifeq ($(HEXAGON_VERSION_MAINTENANCE),0)
                HEXAGON_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(TARGET_VENDOR_RELEASE_BUILD_ID)-$(hexagon_BUILD)
            else
                HEXAGON_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(HEXAGON_VERSION_MAINTENANCE)-$(TARGET_VENDOR_RELEASE_BUILD_ID)-$(hexagon_BUILD)
            endif
        else
            HEXAGON_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(hexagon_BUILD)
        endif
    endif
else
    ifeq ($(HEXAGON_VERSION_MAINTENANCE),0)
        HEXAGON_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(HEXAGON_BUILDTYPE)$(HEXAGON_EXTRAVERSION)-$(hexagon_BUILD)
    else
        HEXAGON_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(HEXAGON_VERSION_MAINTENANCE)-$(shell date -u +%Y%m%d)-$(HEXAGON_BUILDTYPE)$(HEXAGON_EXTRAVERSION)-$(hexagon_BUILD)
    endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hexagon.version=$(HEXAGON_VERSION) \
    ro.hexagon.releasetype=$(HEXAGON_BUILDTYPE) \
    ro.hexagon.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(HEXAGON_VERSION) \
    ro.hexagonlegal.url=https://hexagonos.org/legal

PRODUCT_EXTRA_RECOVERY_KEYS += \
    vendor/hexagon/build/target/product/security/hexagon

-include vendor/hexagon-priv/keys/keys.mk

HEXAGON_DISPLAY_VERSION := $(HEXAGON_VERSION)

ifneq ($(PRODUCT_DEFAULT_DEV_CERTIFICATE),)
ifneq ($(PRODUCT_DEFAULT_DEV_CERTIFICATE),build/target/product/security/testkey)
    ifneq ($(HEXAGON_BUILDTYPE), UNOFFICIAL)
        ifndef TARGET_VENDOR_RELEASE_BUILD_ID
            ifneq ($(HEXAGON_EXTRAVERSION),)
                # Remove leading dash from HEXAGON_EXTRAVERSION
                HEXAGON_EXTRAVERSION := $(shell echo $(HEXAGON_EXTRAVERSION) | sed 's/-//')
                TARGET_VENDOR_RELEASE_BUILD_ID := $(HEXAGON_EXTRAVERSION)
            else
                TARGET_VENDOR_RELEASE_BUILD_ID := $(shell date -u +%Y%m%d)
            endif
        else
            TARGET_VENDOR_RELEASE_BUILD_ID := $(TARGET_VENDOR_RELEASE_BUILD_ID)
        endif
        ifeq ($(HEXAGON_VERSION_MAINTENANCE),0)
            HEXAGON_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(TARGET_VENDOR_RELEASE_BUILD_ID)-$(hexagon_BUILD)
        else
            HEXAGON_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(HEXAGON_VERSION_MAINTENANCE)-$(TARGET_VENDOR_RELEASE_BUILD_ID)-$(hexagon_BUILD)
        endif
    endif
endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hexagon.display.version=$(HEXAGON_DISPLAY_VERSION)

-include $(WORKSPACE)/build_env/image-auto-bits.mk
-include vendor/hexagon/config/partner_gms.mk
-include vendor/cyngn/product.mk

$(call prepend-product-if-exists, vendor/extra/product.mk)

# Hexagon Versioning
-include vendor/hexagon/config/version.mk

# Themes
PRODUCT_PACKAGES += \
    PixelTheme \
    Stock

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils
