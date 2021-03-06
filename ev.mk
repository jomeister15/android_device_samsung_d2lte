$(call inherit-product, device/samsung/d2lte/full_d2lte.mk)


$(call inherit-product, vendor/ev/config/gsm.mk)
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_d2lte
PRODUCT_DEVICE := d2lte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-I747
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2lte	TARGET_DEVICE=d2lte
BUILD_FINGERPRINT="samsung/d2lte/d2lte:4.4.x:user/release-keys" 
PRIVATE_BUILD_DESC="d2lte 4.4.x release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Pugno


PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Galaxy S3 LTE\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/720p/media/bootanimation.zip:system/media/bootanimation.zip
