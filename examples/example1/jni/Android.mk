LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := test1
LOCAL_LDLIBS   = -llog
LOCAL_CFLAGS    += -fPIE
LOCAL_LDFLAGS 	+= -fPIE -pie 
LOCAL_SRC_FILES := test1.cpp

include $(BUILD_EXECUTABLE)
