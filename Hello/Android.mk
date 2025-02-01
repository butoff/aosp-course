LOCAL_PATH := $(call my-dir)
$(warning "$(LOCAL_PATH) visited!")

include $(CLEAR_VARS)

LOCAL_SRC_FILES := java/roma/hello/MainActivity.java

#LOCAL_RESOURCE_DIR := res

LOCAL_SDK_VERSION := current

LOCAL_PACKAGE_NAME := Hello

include $(BUILD_PACKAGE)
