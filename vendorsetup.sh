# Common Device Tree
rm -rf device/xiaomi/sdm845-common
git clone https://github.com/jiro688/android_device_xiaomi_sdm845-common_419.git -b 16.0 device/xiaomi/sdm845-common --depth=1

# Vendor Tree
rm -rf vendor/xiaomi/beryllium
git clone https://github.com/jiro688/android_vendor_xiaomi_beryllium_419.git -b 16.0 vendor/xiaomi/beryllium --depth=1

# Common Vendor Tree
rm -rf vendor/xiaomi/sdm845-common
git clone https://github.com/jiro688/android_vendor_xiaomi_sdm845-common_419.git -b 16.0 vendor/xiaomi/sdm845-common --depth=1

# Kernel Tree
rm -rf kernel/xiaomi/sdm845
git clone https://github.com/jiro688/android_kernel_xiaomi_sdm845_419.git -b 16.0 kernel/xiaomi/sdm845 --depth=1

# Hardware
rm -rf hardware/xiaomi
git clone https://github.com/jiro688/android_hardware_xiaomi.git -b 16.0 hardware/xiaomi

# Patches for Kernel 4.19 
# Hals
rm -rf hardware/qcom-caf/sdm845/display
rm -rf hardware/qcom-caf/sdm845/media
rm -rf hardware/qcom-caf/sdm845/audio
git clone https://github.com/Legendleo90/android_hardware_qcom_display hardware/qcom-caf/sdm845/display
git clone https://github.com/Legendleo90/android_hardware_qcom_media hardware/qcom-caf/sdm845/media
git clone https://github.com/Legendleo90/android_hardware_qcom_audio hardware/qcom-caf/sdm845/audio

# Qcom-caf
cd hardware/qcom-caf/common && git fetch https://github.com/Legendleo90/hardware_qcom-caf_common && git cherry-pick 9127db32a7e606c6675e2ca67e6c7a4796365c08 0139103bdee6f4923c37b03df89d394d3436ad6d 181ff134eac17c9cbc00618135b3827e5eab193a d7f571cc9063c7fa0564cab9a8e83407a5c6eae9 && cd ../../..

# Sepolicy
cd device/lineage/sepolicy && git fetch https://github.com/Legendleo90/device_lineage_sepolicy && git cherry-pick fc4c8fee1d1bf1ff6241fb30285fb2d1b54ed559 && cd ../../..
cd device/qcom/sepolicy_vndr/legacy-um && git fetch https://github.com/Legendleo90/android_device_qcom_sepolicy_vndr && git cherry-pick a4b7e84aabdfed4e8c72257bbe2bffad4b19bee6 47ff8ac2c539f318f885caa5fa531484a56168cb 79f09bc36fb8ca57816e3b05b73c9f118bd12eef 9c7d2991a3581c01f19f6fb54398db23a12ffd09 48f2e4c02df278292aae523c4f5c90ef58ccb6f9 && cd ../../../..
