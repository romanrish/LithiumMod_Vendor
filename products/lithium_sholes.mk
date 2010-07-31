# Inherit AOSP device configuration for sholes.
$(call inherit-product, device/motorola/sholes/sholes.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/lithiummod/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := lithium_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola

# Build Kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=device/motorola/sholes/kernel

#set property overrides
#
PRODUCT_PROPERTY_OVERRIDES += \

# 2.2 build prop overrides
PRODUCT_BUILD_PROP_OVERRIDES := \
	BUILD_DATE_UTC=1279140904 \
	BUILD_DISPLAY_ID=FRG01B \
	BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.2/FRG01B/45394:user/release-keys \
	BUILD_ID=FRG01B \
	BUILD_NUMBER=45394 \
	BUILD_VERSION_TAGS=release-keys \
	PRIVATE_BUILD_DESC="voles-user 2.2 FRG01B 45394 release-keys" \
	PRODUCT_NAME=voles \
	PRODUCT_BRAND=verizon \
	TARGET_DEVICE=sholes \
	TARGET_BUILD_TYPE=user \
	USER=android-build

PRODUCT_COPY_FILES +=  \
    vendor/lithiummod/prebuilt/sholes/media/audio/notifications/Droid.ogg:system/media/audio/notifications/Droid.ogg \
    vendor/lithiummod/prebuilt/sholes/media/audio/ringtones/DroidInvasion.ogg:system/media/audio/ringtones/DroidInvasion.ogg \
    vendor/lithiummod/prebuilt/sholes/media/audio/ringtones/DroidX.ogg:system/media/audio/ringtones/DroidX.ogg \
    vendor/lithiummod/prebuilt/sholes/media/audio/ringtones/DroidIncomingCall.ogg:system/media/audio/ringtones/DroidIncomingCall.ogg \
    vendor/lithiummod/prebuilt/sholes/media/audio/ringtones/DroidRollin.ogg:system/media/audio/ringtones/DroidRollin.ogg \
    vendor/lithiummod/prebuilt/sholes/media/audio/ringtones/DroidSpeaks.ogg:system/media/audio/ringtones/DroidSpeaks.ogg \
    vendor/lithiummod/prebuilt/sholes/media/audio/ringtones/DroidTestLab.ogg:system/media/audio/ringtones/DroidTestLab.ogg 
