# CM Stuff
$(call inherit-product, vendor/pac/config/common_full_phone.mk)

# Device Stuff
$(call inherit-product, device/htc/evita/evita.mk)

# Release Name
PRODUCT_RELEASE_NAME := evita

# Bootanimation
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# Device Naming
PRODUCT_DEVICE := evita
PRODUCT_NAME := pac_evita
PRODUCT_BRAND := htc
PRODUCT_MODEL := One XL
PRODUCT_MANUFACTURER := HTC

# Device overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=evita \
    PRIVATE_BUILD_DESC="5.18.502.1 CL285445 release-keys" \
    BUILD_FINGERPRINT=htc/cingular_us/evita:4.2.2/JDQ39/285445.1:user/release-keys
