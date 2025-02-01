LOCAL_PATH := $(call my-dir)
$(warning "$(LOCAL_PATH) visited!")
include $(call all-makefiles-under,$(LOCAL_PATH))
