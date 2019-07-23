LOCAL_PATH := $(call my-dir)

ifneq ($(filter device_1 device_2 device_3,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif