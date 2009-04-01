LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)


SOURCE_H263_DECODER            += h263dec.c h263.c h263_parser.c mpeg12data.c mpegvideo.c error_resilience.c
SOURCE_H263I_DECODER           +=     
SOURCE_H263_ENCODER            += mpegvideo_enc.c motion_est.c ratecontrol.c    
SOURCE_H263P_ENCODER           +=       
SOURCE_H264_DECODER            += h264.c h264idct.c h264pred.c h264_parser.c cabac.c  
#SOURCE_H264_ENCODER            += h264enc.c h264dspenc.c
SOURCE_H264_ENCODER            =
SOURCE_MPEG1VIDEO_DECODER      += mpeg12.c   
SOURCE_MPEG1VIDEO_ENCODER      += mpeg12enc.c        
SOURCE_MPEG2VIDEO_DECODER      +=    
SOURCE_MPEG2VIDEO_ENCODER      +=    
SOURCE_MPEG4_DECODER           +=   mpeg4video_parser.c   
SOURCE_MPEG4_ENCODER           +=       
SOURCE_MSMPEG4V1_DECODER       += msmpeg4.c msmpeg4data.c     
SOURCE_MSMPEG4V1_ENCODER       +=         
SOURCE_MSMPEG4V2_DECODER       +=       
SOURCE_MSMPEG4V2_ENCODER       +=         
SOURCE_MSMPEG4V3_DECODER       +=       
SOURCE_MSMPEG4V3_ENCODER       +=         
SOURCE_VC1_DECODER             += vc1.c vc1data.c vc1dsp.c intrax8.c intrax8dsp.c   
SOURCE_WMV1_DECODER            +=     
SOURCE_WMV1_ENCODER            +=       
SOURCE_WMV2_DECODER            += wmv2dec.c wmv2.c         
SOURCE_WMV2_ENCODER            += wmv2enc.c
SOURCE_WMV3_DECODER            += 
SOURCE_AAC_DECODER             += aac.c aactab.c mpeg4audio.c aac_parser.c aac_ac3_parser.c

SOURCE_AANDCT = aandcttab.c
SOURCE_ENCODERS = faandct.c jfdctfst.c jfdctint.c
SOURCE_FFT = fft.c
SOURCE_GOLOMB = golomb.c
SOURCE_MDCT = mdct.c
SOURCE_RDFT = rdft.c

SOURCE_HAVE_ARM = \
	arm/dsputil_arm.c	\
	arm/dsputil_arm_s.S	\
	arm/jrevdct_arm.S       \
	arm/mpegvideo_arm.c	\
	arm/simple_idct_arm.S

SOURCE_HAVE_ARMV5TE = \
	arm/mpegvideo_armv5te.c       \
	arm/mpegvideo_armv5te_s.S     \
	arm/simple_idct_armv5te.S

SOURCE_HAVE_ARMVFP = \
	arm/dsputil_vfp.S             \
	arm/float_arm_vfp.S

SOURCE_HAVE_ARMV6 = arm/simple_idct_armv6.S

LOCAL_SRC_FILES := \
       allcodecs.c                                                      \
       audioconvert.c                                                   \
       bitstream.c                                                      \
       bitstream_filter.c                                               \
       dsputil.c                                                        \
       eval.c                                                           \
       faanidct.c                                                       \
       imgconvert.c                                                     \
       jrevdct.c                                                        \
       opt.c                                                            \
       options.c                                                        \
       parser.c                                                         \
       raw.c                                                            \
       resample.c                                                       \
       resample2.c                                                      \
       simple_idct.c                                                    \
       utils.c

LOCAL_SRC_FILES += $(SOURCE_H263_DECODER)
LOCAL_SRC_FILES += $(SOURCE_H263I_DECODER) 	
LOCAL_SRC_FILES += $(SOURCE_H263_ENCODER) 		
LOCAL_SRC_FILES += $(SOURCE_H264_DECODER) 		
LOCAL_SRC_FILES += $(SOURCE_H264_ENCODER) 		
LOCAL_SRC_FILES += $(SOURCE_MPEG1VIDEO_DECODER) 	
LOCAL_SRC_FILES += $(SOURCE_MPEG1VIDEO_ENCODER) 	
LOCAL_SRC_FILES += $(SOURCE_MPEG2VIDEO_DECODER) 	
LOCAL_SRC_FILES += $(SOURCE_MPEG2VIDEO_ENCODER) 	
LOCAL_SRC_FILES += $(SOURCE_MPEG4_DECODER) 	
LOCAL_SRC_FILES += $(SOURCE_MPEG4_ENCODER) 	
LOCAL_SRC_FILES += $(SOURCE_MSMPEG4V1_DECODER) 	
LOCAL_SRC_FILES += $(SOURCE_MSMPEG4V1_ENCCODER) 	
LOCAL_SRC_FILES += $(SOURCE_MSMPEG4V2_DECODER) 	
LOCAL_SRC_FILES += $(SOURCE_MSMPEG4V2_ENCCODER) 	
LOCAL_SRC_FILES += $(SOURCE_MSMPEG4V3_DECODER) 	
LOCAL_SRC_FILES += $(SOURCE_MSMPEG4V3_ENCCODER) 	
LOCAL_SRC_FILES += $(SOURCE_VC1_DECODER) 		
LOCAL_SRC_FILES += $(SOURCE_WMV1_DECODER) 		
LOCAL_SRC_FILES += $(SOURCE_WMV1_ENCODER) 		
LOCAL_SRC_FILES += $(SOURCE_WMV2_DECODER) 		
LOCAL_SRC_FILES += $(SOURCE_WMV2_ENCODER) 		
LOCAL_SRC_FILES += $(SOURCE_WMV3_DECODER) 		
LOCAL_SRC_FILES += $(SOURCE_AAC_DECODER)		
LOCAL_SRC_FILES += $(SOURCE_AANDCT)		
LOCAL_SRC_FILES += $(SOURCE_ENCODERS)		
LOCAL_SRC_FILES += $(SOURCE_FFT)			
LOCAL_SRC_FILES += $(SOURCE_GOLOMB)		
LOCAL_SRC_FILES += $(SOURCE_MDCT)			
LOCAL_SRC_FILES += $(SOURCE_RDFT)			
LOCAL_SRC_FILES += $(SOURCE_HAVE_ARM)		
LOCAL_SRC_FILES += $(SOURCE_HAVE_ARMV5TE)		
#LOCAL_SRC_FILES += $(SOURCE_HAVE_ARMVFP)


LOCAL_MODULE := libavcodec

LOCAL_PRELINK_MODULE := false


LOCAL_C_INCLUDES := 				\
	$(FFMPEG_TOP)/				\
	$(FFMPEG_TOP)/libavutil/		\
	$(LOCAL_PATH)           		\
	$(LOCAL_PATH)/arm/

LOCAL_CFLAGS += -O4 -mno-thumb-interwork -mno-thumb -marm -DHAVE_AV_CONFIG_H

include $(BUILD_STATIC_LIBRARY)
