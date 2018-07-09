LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    GraphicBuffer.cpp

LOCAL_SHARED_LIBRARIES := \
    libui

LOCAL_MODULE := libshim_camera
LOCAL_MODULE_TAGS := optional
LOCAL_MULTILIB := 32

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    bionic/bionic_time_conversions.cpp \
    bionic/pthread_cond.cpp

LOCAL_SHARED_LIBRARIES := libc

LOCAL_MODULE := libshim_libc
LOCAL_MODULE_TAGS := optional

LOCAL_32_BIT_ONLY := true

include $(BUILD_SHARED_LIBRARY)

# libshims_cameraservice
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    libcameraservice/CameraFlashlight.cpp

LOCAL_C_INCLUDES += \
    frameworks/native/include/media/openmax

LOCAL_SHARED_LIBRARIES:= \
    libui \
    liblog \
    libutils \
    libbinder \
    libcutils \
    libmedia \
    libmediautils \
    libcamera_client \
    libgui \
    libhardware \
    libsync \
    libcamera_metadata \
    libjpeg \
    libmemunreachable \
    libcameraservice

LOCAL_MODULE := libshims_cameraservice
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)