## Specify phone tech before including full_phone

# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 720

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/mk/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef52l/full_ef52l.mk)

BOARD_HARDWARE_CLASS := device/pantech/ef52l/mkhw/

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef52l
PRODUCT_NAME := mk_ef52l
PRODUCT_BRAND := Vega
PRODUCT_MODEL := Vega Iron
PRODUCT_MANUFACTURER := Pantech

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME="Vega Iron" \
#    TARGET_DEVICE=ef52l \


# Enable Torch
PRODUCT_PACKAGES += Torch

