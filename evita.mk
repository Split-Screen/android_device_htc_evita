#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    qcom.hw.aac.encoder=true \
    ro.qc.sdk.audio.fluencetype=fluence \

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    persist.hwc.mdpcomp.enable=true

# Thermal
PRODUCT_PROPERTY_OVERRIDES += \
    persist.thermal.monitor=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/vendor/lib/libqc-opt.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.baseband.arch=msm

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix

# Display
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    memtrack.msm8960

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/htc/evita/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# OMX
PRODUCT_PACKAGES += \
    libdashplayer \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# WiFi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/htc/evita/overlay

# Audio
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf

# Camera
PRODUCT_PACKAGES += \
    camera.msm8960

# Ramdisk
PRODUCT_PACKAGES += \
    init.evita.usb.rc \
    init.evita.rc \
    ueventd.evita.rc

PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh

PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/hostapd/hostapd_default.conf:/system/etc/hostapd/hostapd_default.conf

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960

PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/gps.conf:system/etc/gps.conf

# Recovery
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Thermal
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/thermald.conf:system/etc/thermald.conf

# WiFi
PRODUCT_PACKAGES += \
    libwcnss_qmi \
    wcnss_service

PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:/system/etc/wifi/p2p_supplicant_overlay.conf \
    device/htc/evita/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:/system/etc/wifi/wpa_supplicant_overlay.conf \
    device/htc/evita/prebuilt/etc/wifi/WCNSS_qcom_cfg.ini:/system/etc/wifi/WCNSS_qcom_cfg.ini

# call the proprietary setup
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/agps_rm:/system/etc/agps_rm \
    device/htc/evita/prebuilt/bin/akmd:/system/bin/akmd \
    device/htc/evita/prebuilt/bin/charging:/system/bin/charging \
    device/htc/evita/prebuilt/bin/hci_qcomm_init:/system/bin/hci_qcomm_init \
    device/htc/evita/prebuilt/bin/mm-qcamera-daemon:/system/bin/mm-qcamera-daemon \
    device/htc/evita/prebuilt/bin/mpdecision:/system/bin/mpdecision \
    device/htc/evita/prebuilt/bin/rmt_storage:/system/bin/rmt_storage \
    device/htc/evita/prebuilt/bin/thermald:/system/bin/thermald \
    device/htc/evita/prebuilt/lib/libacdbloader.so:/system/lib/libacdbloader.so \
    device/htc/evita/prebuilt/lib/libaudcal.so:/system/lib/libaudcal.so \
    device/htc/evita/prebuilt/lib/hw/camera.vendor.msm8960.so:/system/lib/hw/camera.vendor.msm8960.so \
    device/htc/evita/prebuilt/lib/libBeautyChat.so:/system/lib/libBeautyChat.so \
    device/htc/evita/prebuilt/lib/libcameraasd.so:/system/lib/libcameraasd.so \
    device/htc/evita/prebuilt/lib/libcameraface.so:/system/lib/libcameraface.so \
    device/htc/evita/prebuilt/lib/libcamerapp.so:/system/lib/libcamerapp.so \
    device/htc/evita/prebuilt/lib/libcam_oem_plugin.so:/system/lib/libcam_oem_plugin.so \
    device/htc/evita/prebuilt/lib/libgemini.so:/system/lib/libgemini.so \
    device/htc/evita/prebuilt/lib/libHTC_DIS.so:/system/lib/libHTC_DIS.so \
    device/htc/evita/prebuilt/lib/libhtccamera.so:/system/lib/libhtccamera.so \
    device/htc/evita/prebuilt/lib/libimage-jpeg-dec-omx-comp.so:/system/lib/libimage-jpeg-dec-omx-comp.so \
    device/htc/evita/prebuilt/lib/libimage-jpeg-enc-omx-comp.so:/system/lib/libimage-jpeg-enc-omx-comp.so \
    device/htc/evita/prebuilt/lib/libimage-omx-common.so:/system/lib/libimage-omx-common.so \
    device/htc/evita/prebuilt/lib/libmmcamera_faceproc.so:/system/lib/libmmcamera_faceproc.so \
    device/htc/evita/prebuilt/lib/libmmcamera_frameproc.so:/system/lib/libmmcamera_frameproc.so \
    device/htc/evita/prebuilt/lib/libmmcamera_hdr_lib.so:/system/lib/libmmcamera_hdr_lib.so \
    device/htc/evita/prebuilt/lib/libmmcamera_image_stab.so:/system/lib/libmmcamera_image_stab.so \
    device/htc/evita/prebuilt/lib/libmmcamera_interface2.so:/system/lib/libmmcamera_interface2.so \
    device/htc/evita/prebuilt/lib/libmmcamera_rawchipproc.so:/system/lib/libmmcamera_rawchipproc.so \
    device/htc/evita/prebuilt/lib/libmmcamera_statsproc31.so:/system/lib/libmmcamera_statsproc31.so \
    device/htc/evita/prebuilt/lib/libmmcamera_wavelet_lib.so:/system/lib/libmmcamera_wavelet_lib.so \
    device/htc/evita/prebuilt/lib/libmmipl.so:/system/lib/libmmipl.so \
    device/htc/evita/prebuilt/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/htc/evita/prebuilt/lib/libmmmpod.so:/system/lib/libmmmpod.so \
    device/htc/evita/prebuilt/lib/libmmstillomx.so:/system/lib/libmmstillomx.so \
    device/htc/evita/prebuilt/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/htc/evita/prebuilt/lib/libposteffect.so:/system/lib/libposteffect.so \
    device/htc/evita/prebuilt/lib/libgeofence.so:/system/lib/libgeofence.so \
    device/htc/evita/prebuilt/lib/libloc_api_v02.so:/system/lib/libloc_api_v02.so \
    device/htc/evita/prebuilt/vendor/lib/egl/eglsubAndroid.so:/system/vendor/lib/egl/eglsubAndroid.so \
    device/htc/evita/prebuilt/vendor/lib/egl/libEGL_adreno.so:/system/vendor/lib/egl/libEGL_adreno.so \
    device/htc/evita/prebuilt/vendor/lib/egl/libGLESv1_CM_adreno.so:/system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    device/htc/evita/prebuilt/vendor/lib/egl/libGLESv2_adreno.so:/system/vendor/lib/egl/libGLESv2_adreno.so \
    device/htc/evita/prebuilt/vendor/lib/egl/libGLESv2S3D_adreno.so:/system/vendor/lib/egl/libGLESv2S3D_adreno.so \
    device/htc/evita/prebuilt/vendor/lib/egl/libq3dtools_adreno.so:/system/vendor/lib/egl/libq3dtools_adreno.so \
    device/htc/evita/prebuilt/vendor/lib/libadreno_utils.so:/system/vendor/lib/libadreno_utils.so \
    device/htc/evita/prebuilt/vendor/lib/libc2d2_a3xx.so:/system/vendor/lib/libc2d2_a3xx.so \
    device/htc/evita/prebuilt/vendor/lib/libc2d2_z180.so:/system/vendor/lib/libc2d2_z180.so \
    device/htc/evita/prebuilt/vendor/lib/libC2D2.so:/system/vendor/lib/libC2D2.so \
    device/htc/evita/prebuilt/vendor/lib/libCB.so:/system/vendor/lib/libCB.so \
    device/htc/evita/prebuilt/vendor/lib/libgsl.so:/system/vendor/lib/libgsl.so \
    device/htc/evita/prebuilt/vendor/lib/libllvm-a3xx.so:/system/vendor/lib/libllvm-a3xx.so \
    device/htc/evita/prebuilt/vendor/lib/libOpenCL.so:/system/vendor/lib/libOpenCL.so \
    device/htc/evita/prebuilt/vendor/lib/libOpenVG.so:/system/vendor/lib/libOpenVG.so \
    device/htc/evita/prebuilt/vendor/lib/libsc-a2xx.so:/system/vendor/lib/libsc-a2xx.so \
    device/htc/evita/prebuilt/etc/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/htc/evita/prebuilt/etc/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/htc/evita/prebuilt/etc/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/htc/evita/prebuilt/etc/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    device/htc/evita/prebuilt/lib/libExtendedExtractor.so:/system/lib/libExtendedExtractor.so \
    device/htc/evita/prebuilt/lib/libI420colorconvert.so:/system/lib/libI420colorconvert.so \
    device/htc/evita/prebuilt/lib/libmm-color-convertor.so:/system/lib/libmm-color-convertor.so \
    device/htc/evita/prebuilt/vendor/lib/libqc-opt.so:/system/vendor/lib/libqc-opt.so \
    device/htc/evita/prebuilt/lib/libdrmdecrypt.so:/system/lib/libdrmdecrypt.so \
    device/htc/evita/prebuilt/vendor/lib/drm/libdrmwvmplugin.so:/system/vendor/lib/drm/libdrmwvmplugin.so \
    device/htc/evita/prebuilt/vendor/lib/libdrmfs.so:/system/vendor/lib/libdrmfs.so \
    device/htc/evita/prebuilt/vendor/lib/libdrmtime.so:/system/vendor/lib/libdrmtime.so \
    device/htc/evita/prebuilt/vendor/lib/libQSEEComAPI.so:/system/vendor/lib/libQSEEComAPI.so \
    device/htc/evita/prebuilt/vendor/lib/libwvdrm_L1.so:/system/vendor/lib/libwvdrm_L1.so \
    device/htc/evita/prebuilt/vendor/lib/libwvm.so:/system/vendor/lib/libwvm.so \
    device/htc/evita/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:/system/vendor/lib/libWVStreamControlAPI_L1.so \
    device/htc/evita/prebuilt/vendor/lib/mediadrm/libwvdrmengine.so:/system/vendor/lib/mediadrm/libwvdrmengine.so \
    device/htc/evita/prebuilt/etc/firmware/wlan/prima/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/htc/evita/prebuilt/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/htc/evita/prebuilt/etc/firmware/wcnss.b00:/system/etc/firmware/wcnss.b00 \
    device/htc/evita/prebuilt/etc/firmware/wcnss.b01:/system/etc/firmware/wcnss.b01 \
    device/htc/evita/prebuilt/etc/firmware/wcnss.b02:/system/etc/firmware/wcnss.b02 \
    device/htc/evita/prebuilt/etc/firmware/wcnss.b04:/system/etc/firmware/wcnss.b04 \
    device/htc/evita/prebuilt/etc/firmware/wcnss.b05:/system/etc/firmware/wcnss.b05 \
    device/htc/evita/prebuilt/etc/firmware/wcnss.mdt:/system/etc/firmware/wcnss.mdt

DEVICE_PACKAGE_OVERLAYS += device/htc/evita/overlay

# Boot ramdisk setup
PRODUCT_PACKAGES += \
    fstab.evita

# NFCEE access control
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x

# Media config
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/evita/prebuilt/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/evita/prebuilt/usr/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/htc/evita/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/evita/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# FM radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US xhdpi

# call the proprietary setup
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/lib/libchromatix_s5k3h2yx_default_video.so:/system/lib/libchromatix_s5k3h2yx_default_video.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k3h2yx_hdr.so:/system/lib/libchromatix_s5k3h2yx_hdr.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k3h2yx_hfr.so:/system/lib/libchromatix_s5k3h2yx_hfr.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k3h2yx_preview.so:/system/lib/libchromatix_s5k3h2yx_preview.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k3h2yx_zsl.so:/system/lib/libchromatix_s5k3h2yx_zsl.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k6a1gx_default_video.so:/system/lib/libchromatix_s5k6a1gx_default_video.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k6a1gx_hdr.so:/system/lib/libchromatix_s5k6a1gx_hdr.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k6a1gx_hfr.so:/system/lib/libchromatix_s5k6a1gx_hfr.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k6a1gx_preview.so:/system/lib/libchromatix_s5k6a1gx_preview.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k6a1gx_zsl.so:/system/lib/libchromatix_s5k6a1gx_zsl.so \
    device/htc/evita/prebuilt/lib/hw/sensors.default.so:/system/lib/hw/sensors.default.so \
    device/htc/evita/prebuilt/lib/libimu.so:/system/lib/libimu.so \
    device/htc/evita/prebuilt/lib/libmllite.so:/system/lib/libmllite.so \
    device/htc/evita/prebuilt/lib/libmlplatform.so:/system/lib/libmlplatform.so \
    device/htc/evita/prebuilt/lib/libmpl.so:/system/lib/libmpl.so \
    device/htc/evita/prebuilt/vendor/firmware/libpn544_fw.so:/system/vendor/firmware/libpn544_fw.so \
    device/htc/evita/prebuilt/lib/hw/nfc.default.so:/system/lib/hw/nfc.default.so \
    device/htc/evita/prebuilt/bin/netmgrd:/system/bin/netmgrd \
    device/htc/evita/prebuilt/bin/qmuxd:/system/bin/qmuxd \
    device/htc/evita/prebuilt/lib/libdiag.so:/system/lib/libdiag.so \
    device/htc/evita/prebuilt/lib/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \
    device/htc/evita/prebuilt/lib/libdsutils.so:/system/lib/libdsutils.so \
    device/htc/evita/prebuilt/lib/libidl.so:/system/lib/libidl.so \
    device/htc/evita/prebuilt/lib/libqdi.so:/system/lib/libqdi.so \
    device/htc/evita/prebuilt/lib/libqdp.so:/system/lib/libqdp.so \
    device/htc/evita/prebuilt/lib/libqmi_cci.so:/system/lib/libqmi_cci.so \
    device/htc/evita/prebuilt/lib/libqmi_common_so.so:/system/lib/libqmi_common_so.so \
    device/htc/evita/prebuilt/lib/libqmi_csi.so:/system/lib/libqmi_csi.so \
    device/htc/evita/prebuilt/lib/libqmi_encdec.so:/system/lib/libqmi_encdec.so \
    device/htc/evita/prebuilt/lib/libqmiservices.so:/system/lib/libqmiservices.so \
    device/htc/evita/prebuilt/lib/libqmi.so:/system/lib/libqmi.so \
    device/htc/evita/prebuilt/lib/libnetmgr.so:/system/lib/libnetmgr.so \
    device/htc/evita/prebuilt/lib/libril-qc-qmi-1.so:/system/lib/libril-qc-qmi-1.so \
    device/htc/evita/prebuilt/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := evita
PRODUCT_NAME := evita
PRODUCT_BRAND := htc
PRODUCT_MODEL := One X
PRODUCT_MANUFACTURER := HTC
