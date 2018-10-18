LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

MY_CPP_LIST := 
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/uuid/*.c)

MY_CPP_INCLUDES := $(LOCAL_PATH)
MY_CPP_INCLUDES += $(LOCAL_PATH)/uuid

common_shared_libraries := 

common_static_libraries := 

LOCAL_MODULE := uuid
LOCAL_SRC_FILES:= $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)
LOCAL_C_INCLUDES := $(MY_CPP_INCLUDES)
LOCAL_SHARED_LIBRARIES := $(common_shared_libraries)
LOCAL_STATIC_LIBRARIES := $(common_static_libraries)

LOCAL_CFLAGS := 
LOCAL_CFLAGS += -DHAVE_CONFIG_H
LOCAL_CFLAGS += -Wall -Werror

LOCAL_CPPFLAGS := 
LOCAL_CPPFLAGS += -std=c++11 -Wall -Werror 

LOCAL_LDLIBS += 
#LOCAL_ALLOW_UNDEFINED_SYMBOLS := true

#include $(BUILD_EXECUTABLE)
include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)
