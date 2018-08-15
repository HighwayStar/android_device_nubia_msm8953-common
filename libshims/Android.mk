LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    bionic/bionic_time_conversions.cpp \
    bionic/pthread_cond.cpp

LOCAL_SHARED_LIBRARIES := libc

LOCAL_MODULE := libshim_libc
LOCAL_MODULE_TAGS := optional

LOCAL_32_BIT_ONLY := true

include $(BUILD_SHARED_LIBRARY)

