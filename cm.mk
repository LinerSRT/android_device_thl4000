# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/thl/thl4000/cm_thl4000.mk)

LOCAL_PATH := device/thl/thl4000

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="thl4000"

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq    
       
PRODUCT_NAME := cm_thl4000
PRODUCT_DEVICE := thl4000
PRODUCT_BRAND := THL
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := THL4000

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Inherit some common CM stuff.

CM_BUILD := thl4000

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

$(call inherit-product, vendor/cm/config/common_full_phone.mk)
