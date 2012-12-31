LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=                     \
        ColorConverter.cpp            \
        SoftwareRenderer.cpp

ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),caf)
    DISPLAY := display-caf
else
    ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),legacy)
        DISPLAY := display-legacy
    else
        DISPLAY := display
    endif
endif

LOCAL_C_INCLUDES := \
        $(TOP)/frameworks/native/include/media/openmax \
        $(TOP)/hardware/msm7k \
        $(TOP)/hardware/qcom/$(DISPLAY)/libgralloc

LOCAL_MODULE:= libstagefright_color_conversion

include $(BUILD_STATIC_LIBRARY)
