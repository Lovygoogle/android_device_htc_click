#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=click
MANUFACTURER=htc

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware
adb pull /system/app/HTCCalibrate.apk ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/HTCCalibrate.apk
adb pull /system/etc/AudioPara4.csv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/AudioPara4.csv
adb pull /system/etc/AudioFilter.csv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/AudioFilter.csv
adb pull /system/etc/AudioPreProcess.csv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/AudioPreProcess.csv
adb pull /system/lib/libmmcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libmmcamera.so
adb pull /system/lib/libmm-qcamera-tgt.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libmm-qcamera-tgt.so
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libmmjpeg.so
adb pull /system/lib/libaudioeq.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libaudioeq.so
adb pull /system/lib/libqcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libqcamera.so
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libmm-adspsvc.so
adb pull /system/lib/libgps.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libgps.so
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libOmxH264Dec.so
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libOmxMpeg4Dec.so
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libOmxVidEnc.so
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libmm-adspsvc.so
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libhtc_acoustic.so
adb pull /system/lib/libhtc_ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libhtc_ril.so
adb pull /system/etc/wifi/Fw1251r1c.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware/Fw1251r1c.bin
adb pull /system/etc/firmware/brf6300.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware/brf6300.bin
adb pull /system/etc/firmware/brf6350.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware/brf6350.bin
adb pull /system/bin/akm8973 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/akm8973

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgps.so:obj/lib/libgps.so

# proprietary firmware files
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/Fw1251r1c.bin:system/etc/wifi/Fw1251r1c.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/brf6300.bin:system/etc/firmware/brf6300.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/brf6350.bin:system/etc/firmware/brf6350.bin

# All the blobs necessary for click
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/HTCCalibrate.apk:system/app/HTCCalibrate.apk \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/AudioPara4.csv:system/etc/AudioPara4.csv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmcamera.so:system/lib/libmmcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmm-qcamera-tgt.so:system/lib/libmm-qcamera-tgt.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqcamera.so:system/lib/libqcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgps.so:system/lib/libgps.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/akm8973:system/bin/akm8973
EOF

./setup-makefiles.sh
