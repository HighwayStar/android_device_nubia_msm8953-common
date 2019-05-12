LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.light@2.0-service.nubia
LOCAL_INIT_RC := android.hardware.light@2.0-service.nubia.rc
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := \
    service.cpp \
    Light.cpp

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libcutils \
    libhardware \
    libhidlbase \
    libhidltransport \
    libhwbinder \
    libutils \
    android.hardware.light@2.0


ifneq (,$(filter nx551j,$(TARGET_DEVICE)))
    LOCAL_CFLAGS += -DNO_HOME_LED
endif


include $(BUILD_EXECUTABLE)

include $(call all-makefiles-under,$(LOCAL_PATH))
