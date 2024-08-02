LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AmbientSensePrebuilt \
    arcore \
    Chrome \
    Chrome-Stub \
    ConnMO \
    ConnMetrics \
    DCMO \
    DevicePolicyPrebuilt \
    DMService \
    GCS \
    GoogleTTS \
    Maps \
    MyVerizonServices \
    OBDM_Permissions \
    obdm_stub \
    OdadPrebuilt \
    OemDmTrigger \
    OPScreenRecord \
    Ornament \
    PixelBuds \
    PixelLiveWallpaperPrebuilt \
    RecorderPrebuilt \
    SafetyHubPrebuilt \
    SCONE \
    ScribePrebuilt \
    Showcase \
    SoundAmplifierPrebuilt \
    SprintDM \
    SprintHM \
    Tycho \
    USCCDM \
    Via \
    Videos \
    VZWAPNLib \
    VzwOmaTrigger \
    YouTube \
    YouTubeMusicPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
