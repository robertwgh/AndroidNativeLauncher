LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := test1
LOCAL_LDLIBS   = -llog -lz -lm -ldl
LOCAL_SRC_FILES := test1.cpp

include $(BUILD_EXECUTABLE)
