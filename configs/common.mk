SUPERUSER_EMBEDDED := true

# Common overlay
DEVICE_PACKAGE_OVERLAYS += vendor/hexagon/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/hexagon/overlay/dictionaries

PRODUCT_PACKAGES += \
    BluetoothExt \
    libemoji \
    LatinImeDictionaryPack \
    su \
    procmem \
    procrank \
    Superuser \
    Torch \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    BasicDreams

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# HEXAGON packages
PRODUCT_PACKAGES += \
    PhotoPhase \
    Eleven \
    Development \
    LockClock \
    AudioFX \
    PhotoPhase \
    CMFileManager \
    OmniSwitch \
    Profiles \
    WallpaperPicker \
    CMSettingsProvider \
    CyanogenSetupWizard \
    ExactCalculator \
    HexagonRom \
    Screencast \
    LiveLockScreenService \
    DataUsageProvider

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Extra tools in HEXAGON
PRODUCT_PACKAGES += \
    7z \
    lib7z \
    bash \
    bzip2 \
    curl \
    powertop \
    unrar \
    unzip \
    vim \
    wget \
    zip

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Default Vietnamese Lang
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.locale.language=vi
	ro.product.locale.region=VN

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/hexagon/configs/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/hexagon/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/hexagon/prebuilt/bin/blacklist:system/addon.d/blacklist

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# Installer
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/hexagon/prebuilt/common/etc/persist.conf:system/etc/persist.conf

PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# Sony App
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/app/home.apk:system/app/Home/home.apk \
    vendor/hexagon/prebuilt/common/app/ClockWidgets.apk:system/app/ClockWidgets/ClockWidgets.apk \
    vendor/hexagon/prebuilt/common/app/WallpaperPicker.apk:system/app/WallpaperPicker/WallpaperPicker.apk \
    vendor/hexagon/prebuilt/common/app/Weather.apk:system/app/Weather/Weather.apk \
    vendor/hexagon/prebuilt/common/app/WeatherWidget.apk:system/app/WeatherWidget/WeatherWidget.apk \

#BusyBox
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/BusyBox/busybox:/system/xbin/busybox

# init.d
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/etc/init.local.rc:root/init.hexagon.rc \
    vendor/hexagon/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/hexagon/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/hexagon/prebuilt/common/etc/init.d/99crontab:system/etc/init.d/99crontab \
    vendor/hexagon/prebuilt/common/etc/init.d/99trim_partitions:system/etc/init.d/99trim_partitions \
    vendor/hexagon/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/hexagon/prebuilt/common/etc/cron.d/root:system/etc/cron.d/root \
    vendor/hexagon/prebuilt/common/bin/trim_partitions:system/bin/trim_partitions \
    vendor/hexagon/prebuilt/common/bin/sysinit:system/bin/sysinit

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# CM Platform Library
PRODUCT_PACKAGES += \
    libsepol \
    mke2fs \
    tune2fs \
    nano \
    htop \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    gdbserver \
    micro_bench \
    oprofiled \
    sqlite3 \
    strace \
    pigz

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

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/hexagon/configs/common_versions.mk

# Theme engine
-include vendor/hexagon/configs/themes_common.mk

# CMSDK
include vendor/hexagon/configs/cmsdk_common.mk

# Debuggable by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/hexagon/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \
    vendor/hexagon/prebuilt/common/dolby.zip:system/addon.d/dolby.zip 
# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Kernel Adiutor App
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/app/KernelAdiutor.apk:system/priv-app/KernelAdiutor/KernelAdiutor.apk

# AdAway App
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/app/AdAway.apk:system/priv-app/AdAway/AdAway.apk

# -include vendor/cyngn/product.mk

# HEXAGON OTA
ifneq ($(HEXAGON_BUILDTYPE),UNOFFICIAL)
PRODUCT_PACKAGES +=  \
   HEXAGON_OTA
endif
