ifeq ($(HAPTICS_OFFLOAD_SUPPORT),true)
QTI_VIBRATOR_HAL_SERVICE := \
      vendor.qti.hardware.vibrator.offload.service
else
QTI_VIBRATOR_HAL_SERVICE := \
      vendor.qti.hardware.vibrator.service
endif
PRODUCT_PACKAGES += $(QTI_VIBRATOR_HAL_SERVICE)

BOARD_OPENSOURCE_DIR ?= vendor/qcom/opensource
PRODUCT_COPY_FILES += \
	$(BOARD_OPENSOURCE_DIR)/vibrator/excluded-input-devices.xml:vendor/etc/excluded-input-devices.xml
