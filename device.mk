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

# Inherit from sdm439-common
$(call inherit-product, device/xiaomi/sdm439-common/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# init
PRODUCT_PACKAGES += \
    init.target.rc

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.ims.xml \
    $(LOCAL_PATH)/permissions/qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/qti.xml \
    $(LOCAL_PATH)/permissions/libimscamera_jni.so:$(TARGET_COPY_OUT_SYSTEM)/priv-app/ims/lib/arm64/libimscamera_jni.so \
    $(LOCAL_PATH)/permissions/libimsmedia_jni.so:$(TARGET_COPY_OUT_SYSTEM)/priv-app/ims/lib/arm64/libimsmedia_jni.so

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/keylayout/uinput-goodix.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput-goodix.kl

# Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/pronto_wlan.ko:$(TARGET_COPY_OUT_SYSTEM)/lib/modules/pronto_wlan.ko
