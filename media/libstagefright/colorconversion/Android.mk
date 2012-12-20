LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=                     \
        ColorConverter.cpp            \
        SoftwareRenderer.cpp

LOCAL_C_INCLUDES := \
        $(TOP)/frameworks/native/include/media/openmax \
        $(TOP)/hardware/msm7k
        
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
ifeq ($(TARGET_BOARD_PLATFORM),msm7x27)
        LOCAL_C_INCLUDES += $(TOP)/hardware/qcom/display_legacy/libgralloc
else
        LOCAL_C_INCLUDES += $(TOP)/hardware/qcom/display/libgralloc
endif
endif

LOCAL_MODULE:= libstagefright_color_conversion

include $(BUILD_STATIC_LIBRARY)
