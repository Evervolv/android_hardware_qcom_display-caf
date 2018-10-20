LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)

LOCAL_MODULE                  := libqservice
LOCAL_VENDOR_MODULE           := true
LOCAL_MODULE_TAGS             := optional
LOCAL_C_INCLUDES              := $(common_includes)
LOCAL_SHARED_LIBRARIES        := $(common_libs) libbinder
LOCAL_EXPORT_SHARED_LIBRARY_HEADERS := libbinder
LOCAL_HEADER_LIBRARIES        := libcutils_headers generated_kernel_headers
LOCAL_CFLAGS                  := $(common_flags) -DLOG_TAG=\"qdqservice\"
LOCAL_CFLAGS                  += -Wno-error
LOCAL_SRC_FILES               := QService.cpp \
                                 IQService.cpp \
                                 IQClient.cpp
LOCAL_EXPORT_C_INCLUDE_DIRS   := $(LOCAL_PATH)


include $(BUILD_SHARED_LIBRARY)
