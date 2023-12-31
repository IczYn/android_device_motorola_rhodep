#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
TARGET_IS_VAB := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Overlay
PRODUCT_PACKAGES += \
    FrameworksResRhodep \
    LineageSystemUIRhodep \
    SettingsProviderResRhodep \
    SystemUIResRhodep

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.service \
    android.hardware.bluetooth.audio-impl \
    android.hardware.soundtrigger@2.3-impl \
    audioadsprpcd \
    audio.bluetooth.default \
    audio.primary.holi \
    audio.r_submix.default \
    audio.usb.default \
    libaudiopreprocessing \
    libbundlewrapper \
    libdownmix \
    libdynproc \
    libeffectproxy \
    libldnhncr \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libreverbwrapper \
    libvisualizer \
    sound_trigger.primary.holi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1.vendor \
    com.motorola.hardware.biometric.fingerprint@1.0.vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/uinput-egis.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-egis.idc \
    $(LOCAL_PATH)/configs/idc/uinput-focal.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-focal.idc \
    $(LOCAL_PATH)/configs/keylayout/uinput-egis.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-egis.kl \
    $(LOCAL_PATH)/configs/keylayout/uinput-focal.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-focal.k

# Init
PRODUCT_PACKAGES += \
    init.mmi.overlay.rc \
    init.oem.fingerprint.overlay.sh \
    init.oem.fingerprint2.sh

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0.vendor \
    android.hardware.bluetooth.audio@2.1-impl \
    vendor.qti.hardware.bluetooth_audio@2.1.vendor \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    vendor.qti.hardware.btconfigstore@2.0.vendor

# RIL
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0 \
    android.hardware.secure_element@1.2.vendor

# NFC
PRODUCT_PACKAGES += \
      android.hardware.nfc@1.2-service.samsung \
      nfc_nci_samsung \
      android.hardware.nfc@1.2.vendor \
      android.hardware.secure_element@1.2.vendor \
      com.android.nfc_extras \
      libchrome.vendor \
      NfcNci \
      SecureElement \
      Tag

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from motorola sm6375-common
$(call inherit-product, device/motorola/sm6375-common/common.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/motorola/rhodep/rhodep-vendor.mk)

PRODUCT_PACKAGES += \
      vendor.qti.hardware.sensorscalibrate-V1.0-java \
