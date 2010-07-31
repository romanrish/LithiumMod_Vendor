# Generic lithiummod product
PRODUCT_NAME := lithiummod
PRODUCT_BRAND := lithiummod
PRODUCT_DEVICE := generic

###PRODUCT_PACKAGES += ADWLauncher

# Use edify for otapackage
PRODUCT_SPECIFIC_DEFINES += TARGET_OTA_SCRIPT_MODE=edify

# Include backuptool
PRODUCT_SPECIFIC_DEFINES += TARGET_OTA_BACKUPTOOL=true

# Display modversion in edify script.
PRODUCT_SPECIFIC_DEFINES += TARGET_OTA_MODVER=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=DroidInvasion.ogg \

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Common lithiummod overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/lithiummod/overlay/common

# Bring in some audio files
include frameworks/base/data/sounds/AudioPackage4.mk

PRODUCT_COPY_FILES += \
    vendor/lithiummod/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/lithiummod/prebuilt/common/bin/busybox:system/bin/busybox \
    vendor/lithiummod/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/lithiummod/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/lithiummod/prebuilt/common/bin/flash_image:system/bin/flash_image \
    vendor/lithiummod/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/lithiummod/prebuilt/common/bin/sysro:system/bin/sysro \
    vendor/lithiummod/prebuilt/common/bin/sysrw:system/bin/sysrw \
    vendor/lithiummod/prebuilt/common/lib/libncurses.so:system/lib/libncurses.so \
    vendor/lithiummod/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/lithiummod/prebuilt/common/etc/profile:system/etc/profile \
    vendor/lithiummod/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/lithiummod/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/lithiummod/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/lithiummod/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/lithiummod/prebuilt/common/xbin/bash:system/xbin/bash \
    vendor/lithiummod/prebuilt/common/xbin/busybox:system/xbin/busybox \
    vendor/lithiummod/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/lithiummod/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/lithiummod/prebuilt/common/xbin/lsof:system/xbin/lsof \
    vendor/lithiummod/prebuilt/common/xbin/nano:system/xbin/nano \
    vendor/lithiummod/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh \
    vendor/lithiummod/prebuilt/common/xbin/powertop:system/xbin/powertop \ 

#    vendor/lithiummod/prebuilt/common/xbin/su:system/xbin/su
#    vendor/lithiummod/prebuilt/common/usr/share/app_store/coming_soon:system/usr/share/app_store/coming_soon \
 
# PRODUCT_COPY_FILES +=  \
#    vendor/lithiummod/proprietary/RomManager.apk:system/app/RomManager.apk \

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

PRODUCT_SPECIFIC_DEFINES += TARGET_OTA_BACKUPTOOL=false

PRODUCT_COPY_FILES += \
    vendor/lithiummod/proprietary/Facebook.apk:./system/app/Facebook.apk \
    vendor/lithiummod/proprietary/GenieWidget.apk:./system/app/GenieWidget.apk \
    vendor/lithiummod/proprietary/Gmail.apk:./system/app/Gmail.apk \
    vendor/lithiummod/proprietary/GoogleBackupTransport.apk:./system/app/GoogleBackupTransport.apk \
    vendor/lithiummod/proprietary/GoogleCalendarSyncAdapter.apk:./system/app/GoogleCalendarSyncAdapter.apk \
    vendor/lithiummod/proprietary/GoogleContactsSyncAdapter.apk:./system/app/GoogleContactsSyncAdapter.apk \
    vendor/lithiummod/proprietary/GoogleFeedback.apk:./system/app/GoogleFeedback.apk \
    vendor/lithiummod/proprietary/GooglePartnerSetup.apk:./system/app/GooglePartnerSetup.apk \
    vendor/lithiummod/proprietary/GoogleQuickSearchBox.apk:./system/app/GoogleQuickSearchBox.apk \
    vendor/lithiummod/proprietary/GoogleServicesFramework.apk:./system/app/GoogleServicesFramework.apk \
    vendor/lithiummod/proprietary/kickback.apk:./system/app/kickback.apk \
    vendor/lithiummod/proprietary/LatinImeTutorial.apk:./system/app/LatinImeTutorial.apk \
    vendor/lithiummod/proprietary/Maps.apk:./system/app/Maps.apk \
    vendor/lithiummod/proprietary/MarketUpdater.apk:./system/app/MarketUpdater.apk \
    vendor/lithiummod/proprietary/MediaUploader.apk:./system/app/MediaUploader.apk \
    vendor/lithiummod/proprietary/NetworkLocation.apk:./system/app/NetworkLocation.apk \
    vendor/lithiummod/proprietary/PhoneConfig.apk:./system/app/PhoneConfig.apk \
    vendor/lithiummod/proprietary/ProgramMenu.apk:./system/app/ProgramMenu.apk \
    vendor/lithiummod/proprietary/ProgramMenuSystem.apk:./system/app/ProgramMenuSystem.apk \
    vendor/lithiummod/proprietary/SetupWizard.apk:./system/app/SetupWizard.apk \
    vendor/lithiummod/proprietary/soundback.apk:./system/app/soundback.apk \
    vendor/lithiummod/proprietary/Street.apk:./system/app/Street.apk \
    vendor/lithiummod/proprietary/Talk.apk:./system/app/Talk.apk \
    vendor/lithiummod/proprietary/talkback.apk:./system/app/talkback.apk \
    vendor/lithiummod/proprietary/Vending.apk:./system/app/Vending.apk \
    vendor/lithiummod/proprietary/VoiceDialer.apk:./system/app/VoiceDialer.apk \
    vendor/lithiummod/proprietary/VoiceSearch.apk:./system/app/VoiceSearch.apk \
    vendor/lithiummod/proprietary/YouTube.apk:./system/app/YouTube.apk \
    vendor/lithiummod/proprietary/com.google.android.maps.xml:./system/etc/permissions/com.google.android.maps.xml \
    vendor/lithiummod/proprietary/com.google.android.maps.jar:./system/framework/com.google.android.maps.jar \
    vendor/lithiummod/proprietary/features.xml:./system/etc/permissions/features.xml \
    vendor/lithiummod/proprietary/libinterstitial.so:./system/lib/libinterstitial.so \
    vendor/lithiummod/proprietary/libspeech.so:./system/lib/libspeech.so \
    vendor/lithiummod/proprietary/Superuser.apk:./system/app/Superuser.apk \
    vendor/lithiummod/proprietary/Twitter.apk:./system/app/Twitter.apk \
    vendor/lithiummod/proprietary/DroidEmailPolicy.apk:./system/app/DroidEmailPolicy.apk \
    vendor/lithiummod/proprietary/CarHomeGoogle.apk:./system/app/CarHomeGoogle.apk \
    vendor/lithiummod/proprietary/CarHomeLauncher.apk:./system/app/CarHomeLauncher.apk \
    vendor/lithiummod/proprietary/OneTimeInitializer.apk:./system/app/OneTimeInitializer.apk \
    vendor/lithiummod/proprietary/SholesQuickOffice.apk:./system/app/SholesQuickOffice.apk \
#    vendor/lithiummod/proprietary/wireless_tether_2_0_2.apk:./system/app/wireless_tether_2_0_2.apk \
#    vendor/lithiummod/proprietary/ChromeToPhone.apk:./system/app/ChromeToPhone.apk \
#    vendor/lithiummod/proprietary/com.amazon.mp3.apk:./system/app/com.amazon.mp3.apk \
#    vendor/lithiummod/proprietary/CorpCal.apk:./system/app/CorpCal.apk \
#    vendor/lithiummod/proprietary/GoogleGoggles.apk:./system/app/GoogleGoggles.apk \
#    vendor/lithiummod/proprietary/VVMStub.apk:./system/app/VVMStub.apk \
#    vendor/lithiummod/proprietary/LatinImeGoogle.apk:./system/app/LatinImeGoogle.apk \



