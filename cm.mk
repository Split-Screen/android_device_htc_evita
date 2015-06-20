# CM Stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device Stuff
$(call inherit-product, device/htc/evita/evita.mk)

# Release Name
PRODUCT_RELEASE_NAME := evita

# Bootanimation
TARGET_BOOTANIMATION_NAME := 720

# Device Naming
PRODUCT_DEVICE := evita
PRODUCT_NAME := cm_evita
PRODUCT_BRAND := htc
PRODUCT_MODEL := One XL
PRODUCT_MANUFACTURER := HTC

# Device overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=evita \
    PRIVATE_BUILD_DESC="3.18.502.6 CL131981 release-keys" \
    BUILD_FINGERPRINT=cingular_us/evita/evita:4.1.1/JRO03C/131981.6:user/release-keys
