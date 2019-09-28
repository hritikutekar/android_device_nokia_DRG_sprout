#
# vendor props for DRG_sprout
#

#
# from device/fih_qcom/fih_sdm660_64/system.prop
#
#+{PS1-KW_ENABLE_OEM_SOCKET-01 [MCS-5539]
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.radio.oem_socket=true
#PS1-KW_ENABLE_OEM_SOCKET-01}+ [MCS-5539]

# {{ [VKYK-1129] FrankYSCheng
PRODUCT_PROPERTY_OVERRIDES += \
	persist.env.fastdorm.enabled=true
#  }} [VKYK-1129]

#  {{ [VNA-2863] FrankYSCheng
PRODUCT_PROPERTY_OVERRIDES += \
	persist.data.tcp_rst_drop=true
#  }} [VNA-2863]


# Fihtdccode@CPLai 20140916 add for enable log dynamically for TID-5866 begin
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.wifi_log_enable=false \
	persist.sys.MNC=UNKNOW
# Fihtdccode@CPLai 20140916 add for enable log dynamically for TID-5866 end


# Fihtdccode@TommyYSHung 20150722 add for enable log dynamically for FAO-5543 Begin
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.bt_debug_log_enable=false
# Fihtdccode@TommyYSHung 20150722 add for enable log dynamically for FAO-5543 End

#FihtdcCode@MexWu add for WBG TOOL ramdump begin
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.wbg.bt.service=false \
	persist.sys.wbg.bt=btstop
#FihtdcCode@MexWu add for WBG TOOL ramdump end

#FihtdcCode@AlanChiu add for increase default logd buffer
PRODUCT_PROPERTY_OVERRIDES += \
	ro.logd.size=1048576 \
	persist.sys.bugreport_in_power=1
#FihtdcCode@AlanChiu add for increase default logd buffer

#+FIH@R3J168: [BASIC FEATURE 7] ONE IMAGE ICCID MECHANISM
PRODUCT_PROPERTY_OVERRIDES += \
	persist.ims.enableADBLogs=1 \
	persist.ims.enableDebugLogs=1 \
	persist.data.iwlan.enable=true
#-FIH@R3J168: [BASIC FEATURE 7] ONE IMAGE ICCID MECHANISM

# [C1N-865] IsaacHHLiu, Enable cross binding
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.flexmap_type=nw_mode

# [D1C-35] set ro.telephony.default_network to 22 (G+W+TDS+C+L), RollinCCTseng, 20160901
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=22,22

## SW4-HL-Display-EnableSVI-00+{_20161020
##Enable SVI(Sun Light visibility Improvement)
#ro.qualcomm.svi=1

##Android Light sensor Interface
#ro.qcom.svi.sensortype=2

##SVI configuration file
#config.svi.xml=1
#config.svi.path=/system/etc/svi_config.xml
#config.svi.xml.print=1
##Enable SVI debugging
#debug.cabl.logs=1
#debug.svi.logs=1
#debug.als.logs=1
## SW4-HL-Display-EnableSVI-00+}_20161020

#enable DPM feautre
#persist.vendor.dpm.feature=11

#FihTdcCode@20170615 JohnsonJWHuang disable orientation sensor - Begin
#Device Orientation sensor
#ro.qti.sensors.dev_ori=false
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.sensors.dev_ori=false
#FihTdcCode@20170615 JohnsonJWHuang disable orientation sensor - End

# KenTHChen, enable "logcat -b kernel"
PRODUCT_PROPERTY_OVERRIDES += \
	ro.logd.kernel=true

#GatyCCLu: Disable Skip Validate
PRODUCT_PROPERTY_OVERRIDES += \
	sdm.debug.disable_skip_validate=1

#wifi hotspot power reducetion
PRODUCT_PROPERTY_OVERRIDES += \
	ro.wifi.power.reduction=1

# [ND1-7532] set persist.vendor.radio.lte_vrte_ltd to 1 (enable), RollinCCTseng, 20170518
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.radio.lte_vrte_ltd=1
# [ND1-7532] RollinCCTseng, 20170518


#qcom.bluetooth.soc=rome

# enable navigation bar
#qemu.hw.mainkeys=0

#system prop for rotate display orientation, set to landscape mode
#persist.panel.orientation=90

# System property for cabl
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0

# Audio
##fluencetype can be "fluence" or "fluencepro" or "none"
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.audio.sdk.fluencetype=fluence \
	persist.vendor.audio.fluence.voicecall=true \
	persist.vendor.audio.fluence.voicerec=false \
	persist.vendor.audio.fluence.speaker=true 

# [B2N-1328] Set persist.vendor.radio.cs_srv_type to 1, PerryPILee, 20180223
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.radio.cs_srv_type=1

#SmartAmp
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.smartamp=1

# Enable AssertiveDisplay
#ro.qcom.ad=1
#ro.qcom.ad.calib.data=/data/misc/display/calib.cfg
#ro.qcom.ad.sensortype=3

# Expose aux camera for below packages
PRODUCT_PROPERTY_OVERRIDES += \
	camera.aux.packagelist=com.hmdglobal.camera2,cameratest,com.evenwell.fqc,com.tools.alt,com.siui.android.camera \
	ro.qti.sensors.dev_ori=false

# [DRG-2898] [Android 8.1][Network]Can't register PS after disable APM.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.apm_sim_not_pwdn=1

#force HAL1 for below packages,[PL2O-4926][Camera]Camera is confused when record video in the com.dw.btime APK
PRODUCT_PROPERTY_OVERRIDES += \
	camera.hal1.packagelist=com.dw.btime

# [B2N-1664] set persist.vendor.radio.report_codec to 1, RollinCCTseng, 20180831
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.radio.report_codec=1
# [B2N-1664] RollinCCTseng, 20180831

#!DO NOT REMOVE THE LAST LINE!
#
# from device/qcom/sdm660_64/system.prop
#
#
# system.prop for sdm660
#

#rild.libpath=/system/lib/libreference-ril.so
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so
#rild.libargs=-d /dev/smd0
PRODUCT_PROPERTY_OVERRIDES += \
	persist.rild.nitz_plmn= \
	persist.rild.nitz_long_ons_0= \
	persist.rild.nitz_long_ons_1= \
	persist.rild.nitz_long_ons_2= \
	persist.rild.nitz_long_ons_3= \
	persist.rild.nitz_short_ons_0= \
	persist.rild.nitz_short_ons_1= \
	persist.rild.nitz_short_ons_2= \
	persist.rild.nitz_short_ons_3= \
	ril.subscription.types=NV,RUIM \
	DEVICE_PROVISIONED=1

#
# Set network mode to (T/L/G/W/1X/EVDO, T/G/W/L) for 7+5 mode device on DSDS mode
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=22,20 \
	debug.sf.recomputecrop=0 \
	debug.sf.enable_hwc_vds=1 \
	debug.sf.hw=1 \ 
	debug.sf.latch_unsignaled=1 \
	debug.gralloc.enable_fb_ubwc=1 \
	dalvik.vm.heapsize=36m \
	dev.pm.dyn_samplingrate=1 \
	persist.demo.hdmirotationlock=false
#Disable Skip Validate
PRODUCT_PROPERTY_OVERRIDES += \
	sdm.debug.disable_skip_validate=1

#Property to enable display default color mode
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.display.enable_default_color_mode=1

# Display Properties as per treble compliance
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.gralloc.enable_fb_ubwc=1 \
	vendor.display.disable_skip_validate=1

#ro.hdmi.enable=true
#
# system props for the cne module
#
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.cne.feature=1

#system props for the MM modules
PRODUCT_PROPERTY_OVERRIDES += \
	media.stagefright.enable-player=true \
	media.stagefright.enable-http=true \
	media.stagefright.enable-aac=true \
	media.stagefright.enable-qcp=true \
	media.stagefright.enable-scan=true \
	mmp.enable.3g2=true \
	media.aac_51_output_enabled=true \
	mm.enable.smoothstreaming=true
#media.settings.xml=/vendor/etc/media_profiles_vendor.xml
#codecs:(PARSER_)AC3 AMR_NB AMR_WB AVI DTS FLV 3G2 MKV MP2PS MP2TS OGG QCP WAV FLAC AIFF APE DSD
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.mm.enable.qcom_parser=13623022 \
	persist.mm.enable.prefetch=true

#property to enable narrow search range for video encoding
PRODUCT_PROPERTY_OVERRIDES += \
	vidc.enc.target_support_bframe=1 \
	vendor.vidc.enc.disable_bframes=1 \
	vendor.vidc.dec.enable.downscalar=0

# enable PQ feature by default
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.vidc.enc.disable.pq=false

# Additional buffers shared between Camera and Video
PRODUCT_PROPERTY_OVERRIDES += \
	vidc.enc.dcvs.extra-buff-count=2

#Netflix custom property
PRODUCT_PROPERTY_OVERRIDES += \
	ro.netflix.bsp_rev=Q660-13149-1

#
# system props for the data modules
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.use_data_netmgrd=true \
	persist.vendor.data.mode=concurrent \
#system props for time-services
	persist.timed.enable=true

# system property for maximum number of HFP client connections
PRODUCT_PROPERTY_OVERRIDES += \
	bt.max.hfpclient.connections=1 \
#force disable Bluetooth AAC by default
PRODUCT_PROPERTY_OVERRIDES += \
	persist.bt.a2dp.aac_disable=true

# System property for cabl
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=2 \
	ro.vendor.display.cabl=2

#
# System props for telephony
# System prop to turn on CdmaLTEPhone always
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=1

#Simulate sdcard on /data/media
#
PRODUCT_PROPERTY_OVERRIDES += \
	persist.fuse_sdcard=true

#system prop for wipower support
PRODUCT_PROPERTY_OVERRIDES += \
	ro.bluetooth.emb_wp_mode=true \
	ro.bluetooth.wipower=true

#
#snapdragon value add features
#

#minimum duration for offload playback in secs
PRODUCT_PROPERTY_OVERRIDES += \
	audio.offload.min.duration.secs=30

#disable offload audio video playback by default
PRODUCT_PROPERTY_OVERRIDES += \
	audio.offload.video=false

#enable music through deep buffer
PRODUCT_PROPERTY_OVERRIDES += \
	audio.deep_buffer.media=true

#set AudioFlinger client heap size
PRODUCT_PROPERTY_OVERRIDES += \
	ro.af.client_heap_size_kbyte=7168

#system prop for RmNet Data
PRODUCT_PROPERTY_OVERRIDES += \
	persist.data.df.dev_name=rmnet_usb0

#
# system property determining camera HAL to be used for a Video call
#
# 1 is camera1
# 2 or anything else is camera2
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.VT_CAM_INTERFACE=2

#property to enable user to access Google WFD settings
PRODUCT_PROPERTY_OVERRIDES += \
	persist.debug.wfd.enable=1
#Enable stm-events
PRODUCT_PROPERTY_OVERRIDES += \
	persist.debug.coresight.config=stm-events
##property to choose between virtual/external wfd display
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.wfd.virtual=0

# system prop for NFC DT
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nfc.port=I2C

#property for vendor specific library
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.at_library=libqti-at.so

#min/max cpu in core control
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.qti.core_ctl_min_cpu=2 \
	ro.vendor.qti.core_ctl_max_cpu=4

#hwui properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.texture_cache_size=72 \
	ro.hwui.layer_cache_size=48 \
	ro.hwui.r_buffer_cache_size=8 \
	ro.hwui.path_cache_size=32 \
	ro.hwui.gradient_cache_size=1 \
	ro.hwui.drop_shadow_cache_size=6 \
	ro.hwui.texture_cache_flushrate=0.4 \
	ro.hwui.text_small_cache_width=1024 \
	ro.hwui.text_small_cache_height=1024 \
	ro.hwui.text_large_cache_width=2048 \
	ro.hwui.text_large_cache_height=2048

#Bringup properties
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.radio.atfwd.start=true

#property to enable VDS WFD solution
PRODUCT_PROPERTY_OVERRIDES += \
	persist.hwc.enable_vds=1

#Increase cached app limit
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.qti.sys.fw.bg_apps_limit=60

#Settings to enable sensors
#Device Orientation sensor
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.sensors.dev_ori=true
#Persistent Motion Detector
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.sensors.pmd=true
#Stationary Detector
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.sensors.sta_detect=true
#Motion Detector
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.sensors.mot_detect=true

#Expose aux camera for below packages
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.camera.aux.packagelist=org.codeaurora.snapcam

#disable UBWC for camera
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.camera.preview.ubwc=0

#set maximum supported adapter voltage
PRODUCT_PROPERTY_OVERRIDES += \
	persist.chg.max_volt_mv=9000

#system prop for Bluetooth SOC type
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.bluetooth.soc=cherokee
#ro.bluetooth.library_name=libbluetooth_qti.so
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.btstack.enable.splita2dp=true \
	persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxhd-aac

# Property for backup NTP Server
PRODUCT_PROPERTY_OVERRIDES += \
	persist.backup.ntpServer="0.pool.ntp.org"
# enable IZat OptInApp overlay
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.overlay.izat.optin=rro
#
# ADDITIONAL VENDOR BUILD PROPERTIES
#
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.box-hal-1-0=on \
	ro.boot.wificountrycode=US \
	qemu.hw.mainkeys=0 \
	vendor.video.disable.ubwc=1 \
	dalvik.vm.heapgrowthlimit=256m \
	dalvik.vm.heapstartsize=8m \
	dalvik.vm.heapsize=512m \
	dalvik.vm.heaptargetutilization=0.75 \
	dalvik.vm.heapminfree=512k \
	dalvik.vm.heapmaxfree=8m \
	vendor.hw.fm.init=0 \
	persist.vendor.qcomsysd.enabled=1 \
	persist.nfc.smartcard.config=SIM1 \
	keyguard.no_require_sim=true \
	ro.com.android.dataroaming=true \
	ro.config.ringtone=Ring_Synth_04.ogg \
	ro.config.notification_sound=pixiedust.ogg \
	ro.carrier=unknown \
	ro.config.alarm_alert=Alarm_Classic.ogg \
	ro.dalvik.vm.native.bridge=0 \
	ro.vendor.extension_library=libqti-perfd-client.so \
	persist.vendor.radio.apm_sim_not_pwdn=1 \
	persist.vendor.radio.sib16_support=1 \
	persist.vendor.radio.custom_ecc=1 \
	persist.vendor.radio.rat_on=combine \
	persist.backup.ntpServer=0.pool.ntp.org \
	sys.vendor.shutdown.waittime=500 \
	ro.build.shutdown_timeout=0 \
	persist.radio.multisim.config=dsds \
	ro.frp.pst=/dev/block/bootdevice/by-name/frp \
	ro.opengles.version=196610 \
	vendor.qcom.bluetooth.soc=cherokee \
	af.fast_track_multiplier=1 \
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
	ro.af.client_heap_size_kbyte=7168 \
	persist.vendor.audio.hw.binder.size_kbyte=1024 \
	ro.vendor.sensors.facing=false \
	ro.vendor.sensors.cmc=false \
	ro.vendor.sdk.sensors.gestures=false \
	rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
	sys.autosuspend.timeout=500000 \
	ro.cp_system_other_odex=1 \
	drm.service.enabled=true \
	ro.com.widevine.cachesize=16777216 \
	persist.sys.bbsys=on \
	persist.sys.screenmode=1 \
	persist.gsmapp.ezincall.video=false \
	ro.camera.switch.anim.delay=300 \
	ro.camera.record.anim.delay=200 \
	persist.env.fastdorm.enabled=true \
	persist.vendor.camera.fdvideo=1 \
	camera.panorama.quality=middle \
	vendor.camera.c2d.rotation=1 \
	persist.vendor.camera.ven_hdr=0 \
	persist.vendor.dpm.feature=11 \
	ro.boot.vr=0 \
	ro.build.software.version=V3.54H \
	vendor.camera.aux.packagelist=com.hmdglobal.camera2,com.evenwell.fqc,com.tools.alt,com.fihtdc.fap,org.codeaurora.snapcam \
	persist.vendor.bt.splita2dp.44_1_war=false \
	persist.bt.enable.splita2dp=false \
	persist.vendor.bt.enable.splita2dp=true \
	persist.vendor.btstack.enable.splita2dp=true \
	camera.disable_zsl_mode=0 \
	vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap