#
# vendor props for DRG_sprout
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.audio.sdk.fluencetype=fluence \
	ro.af.client_heap_size_kbyte=7168 \
	vendor.audio_hal.period_size=192 \
	ro.vendor.audio.sdk.fluencetype=none \
	persist.vendor.audio.fluence.voicecall=true \
	persist.vendor.audio.fluence.voicerec=false \
	persist.vendor.audio.fluence.speaker=true \
	vendor.audio.tunnel.encode=false \
	persist.vendor.audio.ras.enabled=false \
	vendor.audio.offload.buffer.size.kb=64 \
	audio.offload.min.duration.secs=30 \
	audio.offload.video=false \
	vendor.audio.offload.track.enable=true \
	audio.deep_buffer.media=true \
	vendor.voice.path.for.pcm.voip=true \
	vendor.audio.offload.multiaac.enable=true \
	vendor.audio.dolby.ds2.enabled=false \
	vendor.audio.dolby.ds2.hardbypass=false \
	vendor.audio.offload.multiple.enabled=false \
	vendor.audio.offload.passthrough=false \
	ro.vendor.audio.sdk.ssr=false \
	vendor.audio.offload.gapless.enabled=true \
	vendor.audio.safx.pbe.enabled=true \
	vendor.audio.parser.ip.buffer.size=262144 \
	vendor.audio.flac.sw.decoder.24bit=true \
	persist.vendor.bt.a2dp_offload_cap=sbc \
	vendor.audio.use.sw.alac.decoder=true \
	vendor.audio.use.sw.ape.decoder=true \
	vendor.audio.hw.aac.encoder=true \
	vendor.audio.noisy.broadcast.delay=600 \
	persist.vendor.audio.hifi.int_codec=true \
	vendor.audio.offload.pstimeout.secs=3 \
	persist.vendor.audio.hw.binder.size_kbyte=1024

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
	persist.bt.a2dp.aac_disable=true \
	ro.bluetooth.emb_wp_mode=true \
	ro.bluetooth.wipower=true \
	vendor.bluetooth.soc=cherokee \
	bt.max.hfpclient.connections=1 \
	persist.vendor.btstack.enable.splita2dp=true \
	persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxhd-aac \
	vendor.qcom.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
	camera.aux.packagelist=com.hmdglobal.camera2,cameratest,com.evenwell.fqc,com.tools.alt,com.siui.android.camera \
	ro.qti.sensors.dev_ori=false \
	camera.hal1.packagelist=com.dw.btime \
	vidc.enc.dcvs.extra-buff-count=2 \
	vendor.camera.aux.packagelist=org.codeaurora.snapcam \
	persist.vendor.camera.preview.ubwc=0 \
	ro.camera.switch.anim.delay=300 \
	ro.camera.record.anim.delay=200 \
	persist.vendor.camera.fdvideo=1 \
	camera.panorama.quality=middle \
	vendor.camera.c2d.rotation=1 \
	persist.vendor.camera.ven_hdr=0 \
	camera.disable_zsl_mode=0 \
	vendor.camera.aux.packagelist=com.hmdglobal.camera2,com.evenwell.fqc,com.tools.alt,com.fihtdc.fap,org.codeaurora.snapcam \
	vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap

# Color Mode
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.display.enable_default_color_mode=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
	debug.sf.recomputecrop=0 \
	debug.sf.enable_hwc_vds=1 \
	debug.sf.hw=1 \
	debug.sf.latch_unsignaled=1 \
	debug.gralloc.enable_fb_ubwc=1 \
	ro.opengles.version=196610 \
	dev.pm.dyn_samplingrate=1 \
	ro.qualcomm.cabl=0 \
	ro.qualcomm.cabl=2 \
	ro.vendor.display.cabl=2

# Factory reset partition
PRODUCT_PROPERTY_OVERRIDES += \
	ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q660-13149-1

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port=I2C \
	persist.nfc.smartcard.config=SIM1 \

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Play store
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase.am=android-nokia \
    ro.com.google.clientidbase.gmm=android-nokia \
    ro.com.google.clientidbase.ms=android-nokia \
    ro.com.google.clientidbase.yt=android-nokia

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.VT_CAM_INTERFACE=2 \
	persist.vendor.radio.oem_socket=true \
	persist.radio.flexmap_type=nw_mode \
	persist.vendor.radio.lte_vrte_ltd=1 \
	persist.vendor.radio.cs_srv_type=1 \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.vendor.radio.report_codec=1 \
	persist.vendor.radio.atfwd.start=true \
	persist.vendor.radio.apm_sim_not_pwdn=1 \
	persist.vendor.radio.sib16_support=1 \
	persist.vendor.radio.custom_ecc=1 \
	persist.vendor.radio.rat_on=combine \
	persist.radio.multisim.config=dsds \
	persist.data.iwlan.enable=true \
	persist.vendor.cne.feature=1 \
	persist.vendor.dpm.feature=11 \
	ro.vendor.use_data_netmgrd=true \
	persist.vendor.data.mode=concurrent \
	rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
	persist.rild.nitz_plmn="" \
	persist.rild.nitz_long_ons_0="" \
	persist.rild.nitz_long_ons_1="" \
	persist.rild.nitz_long_ons_2="" \
	persist.rild.nitz_long_ons_3="" \
	persist.rild.nitz_short_ons_0="" \
	persist.rild.nitz_short_ons_1="" \
	persist.rild.nitz_short_ons_2="" \
	persist.rild.nitz_short_ons_3="" \
	ril.subscription.types=NV,RUIM \
	DEVICE_PROVISIONED=1 \
	ro.telephony.default_network=22,22 \
	telephony.lteOnCdmaDevice=1 \
	persist.ims.enableADBLogs=1 \
	persist.ims.enableDebugLogs=1

# RmNet Data
PRODUCT_PROPERTY_OVERRIDES += \
	persist.data.tcp_rst_drop=true \
	persist.data.df.dev_name=rmnet_usb0 \
	ro.com.android.dataroaming=true \

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.sensors.dev_ori=false \
	ro.vendor.sensors.dev_ori=true \
	ro.vendor.sensors.pmd=true \
	ro.vendor.sensors.sta_detect=true \
	ro.vendor.sensors.mot_detect=true \
	ro.vendor.sensors.facing=false \
	ro.vendor.sensors.cmc=false \
	ro.vendor.sdk.sensors.gestures=false \

# VNDK
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.vndk.version=28

# Voice assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true