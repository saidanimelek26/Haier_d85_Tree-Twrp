#
# Copyright 2026 The Android Open-Source Project
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

LOCAL_PATH := device/Haier/B85-B

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Copy kernel
PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel

# Copy device-specific files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/default.prop:default.prop \
	$(LOCAL_PATH)/system.prop:system.prop \
	$(LOCAL_PATH)/egl.cfg:system/lib/egl/egl.cfg

# Device properties
PRODUCT_PROPERTY_OVERRIDES := \
	ro.product.board=B85 \
	ro.board.platform=MT6589
