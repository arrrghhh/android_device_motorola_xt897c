$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/motorola/xt897c/device_xt897c.mk)

ifneq ($(TARGET_BUILD_VARIANT),codefirex)
# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml
else
# Specify phone tech before including full_phone
$(call inherit-product, vendor/cfx/config/cdma.mk)

$(call inherit-product, vendor/cfx/config/common_full_phone.mk)

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/cfx/prebuilt/common/bootanimation/720.zip:system/media/bootanimation.zip
endif

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xt897c
PRODUCT_NAME := full_xt897c
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT897
PRODUCT_MANUFACTURER := motorola
