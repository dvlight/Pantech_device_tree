# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 720

# Inherit some common AOSP stuff.


# Inherit device configuration
$(call inherit-product, device/pantech/ef52l/aosp_ef52l.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef52l
PRODUCT_NAME := aosp_ef52l
PRODUCT_BRAND := VEGA
PRODUCT_MODEL := Vega Iron
PRODUCT_MANUFACTURER := Pantech

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME="Vega Iron" \
#    TARGET_DEVICE=ef52l \


# Enable Torch
#PRODUCT_PACKAGES += Torch

