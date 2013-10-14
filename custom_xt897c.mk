# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common cos stuff.
$(call inherit-product, vendor/custom/config/common.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Release name
PRODUCT_RELEASE_NAME := xt897c
PRODUCT_NAME := custom_xt897c

$(call inherit-product, device/motorola/xt897c/full_xt897c.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=motorola PRODUCT_NAME=xt897 BUILD_PRODUCT=xt897 BUILD_FINGERPRINT=motorola/XT897_us_spr/asanti_c:4.1.2/9.8.2Q-122_XT897_FFW-5/6:user/release-keys

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xt897c
PRODUCT_NAME := custom_xt897c
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT897
PRODUCT_MANUFACTURER := motorola
