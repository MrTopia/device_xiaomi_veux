echo "Cloning Audio Configs...."

# Clone own audio config tree
rm -rf hardware/qcom-caf/sm8350/audio/configs/holi && git clone https://github.com/Amrito-Projects/hardware_qcom-caf_sm8350_audio_configs_holi.git -b 14 hardware/qcom-caf/sm8350/audio/configs/holi --depth=1

echo "Cloning vendor..."
# Clone Vendor
git clone https://gitea.com/amritokun/vendor_xiaomi_veux.git -b 14 vendor/xiaomi/veux

echo "Cloning hardware related stuff..."
# Hardware
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi

echo "Cloning Kernel"
# Kernel
git clone https://github.com/PaimonLab/kernel_xiaomi_veux.git kernel/xiaomi/veux

echo "Cloning BCR..."
# BCR
git clone https://github.com/MrTopia/vendor_bcr vendor/bcr

echo "Cloning Overlays..."
# Overlays
cd packages/apps/Settings/res/drawable/ && rm -rf maintainer_img.jpg && wget https://github.com/MrTopia/device_xiaomi_veux/releases/download/stuffs/maintainer_img.jpg && cd ../../../../..
cd packages/apps/Settings/res/values/ && rm -rf afterlife_strings.xml && wget https://github.com/MrTopia/device_xiaomi_veux/releases/download/stuffs/afterlife_strings.xml && cd ../../../../..

echo "Cloning MIUI Camera..."
# MIUI Camera
git clone https://github.com/Amrito-Projects/vendor_xiaomi_miuicamera-veux.git vendor/xiaomi/miuicamera-veux
git clone https://github.com/Amrito-Projects/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera

rm -rf hardware/xiaomi/megvii

echo "Cloning clnag-17"
rm -rf prebuilts/clang/host/linux-x86/clang-r487747c
git clone https://gitlab.com/crdroidandroid/android_prebuilts_clang_host_linux-x86_clang-r487747c.git -b 14.0  prebuilts/clang/host/linux-x86/clang-r487747c

echo "Completed, proceeding to lunch"
