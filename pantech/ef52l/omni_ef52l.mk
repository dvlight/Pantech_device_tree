# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Enhanced NFC
#$(call inherit-product, vendor/omni/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef52l/full_ef52l.mk)

BOARD_HARDWARE_CLASS := device/pantech/ef52l/cmhw/

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef52l
PRODUCT_NAME := omni_ef52l
PRODUCT_BRAND := VEGA
PRODUCT_MODEL := Vega Iron
PRODUCT_MANUFACTURER := Pantech

TARGET_QCOM_AUDIO_VARIANT := caf-8960
TARGET_QCOM_DISPLAY_VARIANT := caf-8960
TARGET_QCOM_MEDIA_VARIANT := caf-8960


# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME="Vega Iron" \
#    TARGET_DEVICE=ef52l \


# Enable Torch
#PRODUCT_PACKAGES += Torch

