SUPERUSER_EMBEDDED := true

# Common overlay
DEVICE_PACKAGE_OVERLAYS += vendor/hexagon/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/hexagon/overlay/dictionaries

# Inherit common product packages
-include vendor/hexagon/configs/common_packages.mk

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Storage manager
PRODUCT_PROPERTY_OVERRIDES += \
    ro.storage_manager.enabled=true


PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

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

# Enable Google Assistant on all devices.
PRODUCT_PROPERTY_OVERRIDES += \
   ro.opa.eligible_device=true

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/hexagon/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/hexagon/prebuilt/bin/blacklist:system/addon.d/blacklist

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/hexagon/configs/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# Installer
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/hexagon/prebuilt/common/etc/persist.conf:system/etc/persist.conf

PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# Prebuilt App
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/app/ClockWidgets.apk:system/app/ClockWidgets/ClockWidgets.apk \
    vendor/hexagon/prebuilt/common/app/Weather.apk:system/app/Weather/Weather.apk \
    vendor/hexagon/prebuilt/common/app/WeatherWidget.apk:system/app/WeatherWidget/WeatherWidget.apk \
    vendor/hexagon/prebuilt/common/app/NexusLauncherPrebuilt.apk:system/app/NexusLauncherPrebuilt/NexusLauncherPrebuilt.apk \
    vendor/hexagon/prebuilt/common/app/Wallpaper.apk:system/app/Wallpaper/Wallpaper.apk
#BusyBox
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/BusyBox/busybox:/system/xbin/busybox

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/hexagon/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/hexagon/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

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

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/hexagon/configs/common_versions.mk
-include vendor/hexagon/configs/partner_gms.mk

ifneq ($(TARGET_DISABLE_CMSDK), true)
# CMSDK
include vendor/hexagon/configs/cmsdk_common.mk
endif


# Copy latinime for gesture typing
#PRODUCT_COPY_FILES += \
#    vendor/hexagon/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Kernel Adiutor App
#PRODUCT_COPY_FILES += \
#    vendor/hexagon/prebuilt/common/app/KernelAdiutor.apk:system/priv-app/KernelAdiutor/KernelAdiutor.apk

# AdAway App
#PRODUCT_COPY_FILES += \
#    vendor/hexagon/prebuilt/common/app/AdAway.apk:system/priv-app/AdAway/AdAway.apk

# -include vendor/cyngn/product.mk

# HEXAGON OTA
ifneq ($(HEXAGON_BUILDTYPE),UNOFFICIAL)
PRODUCT_PACKAGES +=  \
   HEXAGON_OTA
endif
