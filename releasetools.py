# Copyright (C) 2014 The CyanogenMod Project
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

""" Custom OTA commands for matissewifi devices """

import re
import os

TARGET_DIR = os.getenv('OUT')

#def FullOTA_Assertions(info):
#  AddBootloaderAssertion(info, info.input_zip)


#def IncrementalOTA_Assertions(info):
#  AddBootloaderAssertion(info, info.target_zip)


#def AddBootloaderAssertion(info, input_zip):
#  android_info = input_zip.read("OTA/android-info.txt")
#  m = re.search(r"require\s+version-bootloader\s*=\s*(\S+)", android_info)
#  if m:
#    bootloaders = m.group(1).split("|")
#    if "*" not in bootloaders:
#      info.script.AssertSomeBootloader(*bootloaders)
#    info.metadata["pre-bootloader"] = m.group(1)

def FullOTA_InstallEnd(info):
  info.script.Mount("/system")
  info.script.AppendExtra('set_metadata("/system/bin/ds_fmc_appd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");')
  info.script.AppendExtra('set_metadata("/system/bin/qmuxd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");')
  info.script.AppendExtra('set_metadata("/system/bin/radish", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");')
  info.script.AppendExtra('set_metadata("/system/bin/rild", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:rild_exec:s0");')
  info.script.Unmount("/system")

def FullOTA_InstallEnd(info):
  info.script.Mount("/system")
  info.script.AppendExtra('set_metadata("/system/su.d/permissive.sh", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");')
  info.script.Unmount("/system")
