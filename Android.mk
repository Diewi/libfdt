LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libfdt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_UNSTRIPPED)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
    fdt.c \
    fdt_ro.c \
    fdt_wip.c \
    fdt_sw.c \
    fdt_rw.c \
    fdt_strerror.c \
    fdt_empty_tree.c \
    fdt_addresses.c \
    fdt_overlay.c

#LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/fdt.h

include $(BUILD_STATIC_LIBRARY)
