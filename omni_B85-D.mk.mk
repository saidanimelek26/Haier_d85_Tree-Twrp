
# Embedded
$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := Haier
PRODUCT_NAME := omni_B85
PRODUCT_BRAND := B85
PRODUCT_MODEL := X5
PRODUCT_MANUFACTURER := Haier
