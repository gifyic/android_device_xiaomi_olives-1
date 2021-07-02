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

# Inherit from the common Open Source configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from the common exTHmUI configuration.
$(call inherit-product, vendor/exthm/config/common_full_phone.mk)

# Inherit from device.mk
$(call inherit-product, device/xiaomi/olives/device.mk)

PRODUCT_DEVICE := olives
PRODUCT_NAME := exthm_olives
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8 Series
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V11.0.5.0.QCMMIXM release-keys" \
    PRODUCT_NAME="olives" \
    TARGET_DEVICE="olives"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
