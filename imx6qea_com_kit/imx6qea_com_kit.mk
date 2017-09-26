$(call inherit-product, device/embeddedartists/imx6qea_com_kit/imx6.mk)
#$(call inherit-product, device/fsl/imx6/imx6.mk)
$(call inherit-product-if-exists,vendor/google/products/gms.mk)

# Overrides
PRODUCT_NAME := imx6qea_com_kit
PRODUCT_DEVICE := imx6qea_com_kit
PRODUCT_BRAND := embeddedartists
PRODUCT_MANUFACTURER := embeddedartists

PRODUCT_COPY_FILES += \
	device/embeddedartists/imx6qea_com_kit/init.rc:root/init.freescale.rc \
        device/fsl/sabresd_6dq/init.i.MX6Q.rc:root/init.freescale.i.MX6Q.rc \
        device/fsl/sabresd_6dq/init.i.MX6DL.rc:root/init.freescale.i.MX6DL.rc \
	device/embeddedartists/imx6qea_com_kit/fstab.freescale:root/fstab.freescale \
	device/embeddedartists/imx6qea_com_kit/ar1021_I2C_Touchscreen.idc:system/usr/idc/ar1021_I2C_Touchscreen.idc

# Audio
#USE_XML_AUDIO_POLICY_CONF := 1
#device/embeddedartists/imx6qea_com_kit/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
#        frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
#        frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
#        frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml \
#        frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/etc/default_volume_tables.xml \


PRODUCT_COPY_FILES += \
	device/embeddedartists/imx6qea_com_kit/audio_effects.conf:system/etc/audio_effects.conf \
        device/embeddedartists/imx6qea_com_kit/audio_policy.conf:system/etc/audio_policy.conf \


PRODUCT_COPY_FILES +=	\
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6d.bin:system/lib/firmware/vpu/vpu_fw_imx6d.bin \
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6q.bin:system/lib/firmware/vpu/vpu_fw_imx6q.bin \
        device/embeddedartists/firmware/rtlwifi/rtl8192cufw_TMSC.bin:system/vendor/firmware/rtlwifi/rtl8192cufw_TMSC.bin \
	device/embeddedartists/firmware/rtlwifi/rtl8192cufw_TMSC.bin:system/etc/firmware/rtlwifi/rtl8192cufw_TMSC.bin \
        device/embeddedartists/common/wlan/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/embeddedartists/common/wlan/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf


PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/mmcblk3p5
$(call inherit-product, build/target/product/verity.mk)

DEVICE_PACKAGE_OVERLAYS := device/embeddedartists/imx6qea_com_kit/overlay

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG += xlarge large tvdpi hdpi

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	device/embeddedartists/imx6qea_com_kit/required_hardware.xml:system/etc/permissions/required_hardware.xml

PRODUCT_COPY_FILES += \
    device/fsl-proprietary/gpu-viv/lib/egl/egl.cfg:system/lib/egl/egl.cfg

PRODUCT_PACKAGES += \
    libEGL_VIVANTE \
    libGLESv1_CM_VIVANTE \
    libGLESv2_VIVANTE \
    gralloc_viv.imx6 \
    hwcomposer_viv.imx6 \
    hwcomposer_fsl.imx6 \
    libGAL \
    libGLSLC \
    libVSC \
    libg2d \
    libgpuhelper

