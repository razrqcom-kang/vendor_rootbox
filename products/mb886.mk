# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/motorola/mb886/full_mb886.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/moto-qcom-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_mb886
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := mb886
PRODUCT_MODEL := MB886
PRODUCT_MANUFACTURER := Motorola

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mb886 BUILD_FINGERPRINT=motorola/mb886/qinara:4.2.2/JDQ39/346380647:user/release-keys PRIVATE_BUILD_DESC="qinara-user 4.2.2 JDQ39 346380647 release-keys" BUILD_NUMBER=346380647

# Qinara specific packages
#PRODUCT_PACKAGES += \
#    Thinkfree

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
