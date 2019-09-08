#
# Copyright (C) 2019 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/pantech/ef52l/ef52l-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef52l/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Root files
PRODUCT_PACKAGES += \
	initlogo.rle

# Camera
#PRODUCT_PACKAGES += \
#    camera.msm8960

# Lights
#PRODUCT_PACKAGES += \
	lights.msm8960

# audio UCM files
#PRODUCT_COPY_FILES += \
                       device/pantech/ef52l/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \

# MSM8960/MPQ8064 firmware
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/firmware/cyttsp_8064_mtp.hex:/system/etc/firmware/cyttsp_8064_mtp.hex \
    device/pantech/ef52l/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex \
    device/pantech/ef52l/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/pantech/ef52l/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/pantech/ef52l/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    device/pantech/ef52l/firmware/vidc.b00:/system/etc/firmware/vidc.b00 \
    device/pantech/ef52l/firmware/vidc.b01:/system/etc/firmware/vidc.b01 \
    device/pantech/ef52l/firmware/vidc.b02:/system/etc/firmware/vidc.b02 \
    device/pantech/ef52l/firmware/vidc.b03:/system/etc/firmware/vidc.b03 \
    device/pantech/ef52l/firmware/vidcfw.elf:/system/etc/firmware/vidcfw.elf \
    device/pantech/ef52l/firmware/vidc.mdt:/system/etc/firmware/vidc.mdt \
    device/pantech/ef52l/firmware/libpn544_fw.so:/system/vendor/firmware/libpn544_fw.so \
# keylayout
PRODUCT_COPY_FILES += \
	device/pantech/ef52l/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/pantech/ef52l/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	device/pantech/ef52l/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/pantech/ef52l/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/pantech/ef52l/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
	#device/pantech/ef52l/keylayout/stmicro_fts_ts.kl:system/usr/keylayout/stmicro_fts_ts.kl \
	#device/pantech/ef52l/keylayout/atmel_mxt_540s.kl:system/usr/keylayout/atmel_mxt_540s.kl \

# keychars
PRODUCT_COPY_FILES += \
	device/pantech/ef52l/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
	device/pantech/ef52l/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
	device/pantech/ef52l/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
	device/pantech/ef52l/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

# idc
PRODUCT_COPY_FILES += \
	device/pantech/ef52l/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
	device/pantech/ef52l/idc/qwerty.idc:system/usr/idc/qwerty.idc \
     

PRODUCT_COPY_FILES += \
	device/pantech/ef52l/thermald/thermald-8064_ef52.conf:system/etc/thermald.conf \
	device/pantech/ef52l/thermald/thermal-engine-8064.conf:system/etc/thermal-engine-8064.conf

PRODUCT_PACKAGES += \
    Torch

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=300

#Copy kernel header if using prebuilt kernel
#ifneq ($(OUT),)
#$(call inherit-product, vendor/pantech/ef52l/prebuilt_module.mk)
#$(shell rm -rf $(OUT)/obj/KERNEL_OBJ;\
#    mkdir -p $(OUT)/obj;\
#    ln -s $(ANDROID_BUILD_TOP)/device/pantech/ef52l/include/KERNEL_OBJ $(OUT)/obj/KERNEL_OBJ)
#endif

#Product info
ifdef AOSP_ROM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.device.chipset=APQ8064T \
	ro.device.gpu=Adreno-320 \
	ro.device.front_cam=2Mpx \
	ro.device.rear_cam=13Mpx \
	ro.device.screen_res=720x1280 \
	ro.aosp.maintainer=light1234
endif


#$(shell  cp -f $(ANDROID_BUILD_TOP)/device/pantech/ef52l/vibrator/vibrator.c $(ANDROID_BUILD_TOP)/hardware/libhardware_legacy/vibrator/vibrator.c);

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Inherit from msm8960-common
$(call inherit-product, device/pantech/msm8960-common/msm8960.mk)
