LOCAL_PATH := $(call my-dir)

FFMPEG_TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

include $(FFMPEG_TOP)/libavutil/Android.mk
include $(FFMPEG_TOP)/libavcodec/Android.mk
