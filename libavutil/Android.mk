LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
adler32.c                                                        \
       aes.c                                                            \
       avstring.c                                                       \
       base64.c                                                         \
       crc.c                                                            \
       des.c                                                            \
       fifo.c                                                           \
       intfloat_readwrite.c                                             \
       lfg.c                                                            \
       lls.c                                                            \
       log.c                                                            \
       lzo.c                                                            \
       mathematics.c                                                    \
       md5.c                                                            \
       mem.c                                                            \
       random.c                                                         \
       random_seed.c                                                    \
       rational.c                                                       \
       rc4.c                                                            \
       sha1.c                                                           \
       tree.c                                                           \
       utils.c

LOCAL_MODULE := libavutil

LOCAL_PRELINK_MODULE := false

LOCAL_C_INCLUDES := 				\
	$(FFMPEG_TOP)/				\
	$(LOCAL_PATH)           		\
	$(LOCAL_PATH)/arm/

LOCAL_CFLAGS += -O4 -mno-thumb-interwork -mno-thumb -marm -DHAVE_AV_CONFIG_H

include $(BUILD_STATIC_LIBRARY)
