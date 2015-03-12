LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := addfunc
LOCAL_SRC_FILES := addfunc.cpp
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := test2
LOCAL_SRC_FILES := test2.cpp
LOCAL_CFLAGS    := -fPIE
LOCAL_LDFLAGS 	:= -fPIE -pie 
LOCAL_LDLIBS    := -L$(LOCAL_PATH)/../libs/$(TARGET_ARCH_ABI)/ -laddfunc 
include $(BUILD_EXECUTABLE)

