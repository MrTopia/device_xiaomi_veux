echo "Cloning Audio Configs...."

# Clone own audio config tree
rm -rf hardware/qcom-caf/sm8350/audio/configs/holi && git clone https://github.com/Amrito-Projects/hardware_qcom-caf_sm8350_audio_configs_holi.git -b 14 hardware/qcom-caf/sm8350/audio/configs/holi --depth=1

echo "Cloning vendor..."
# Clone Vendor
git clone https://github.com/Amrito-Projects/vendor_xiaomi_veux.git vendor/xiaomi/veux

echo "Cloning hardware related stuff..."
# Hardware
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

echo "Cloning Kernel"
# Kernel
git clone https://github.com/PaimonLab/kernel_xiaomi_veux.git kernel/xiaomi/veux

echo "Clonimg ViPER......."
# ViPER
git clone https://github.com/Amrito-Projects/Viper4AndroidFX.git packages/apps/ViPER4AndroidFX

echo "Cloning BCR..."
# BCR
git clone https://github.com/MrTopia/vendor_bcr vendor/bcr

echo cloning AGC camera
git clone https://gitlab.com/takixamru/vendor_xiaomi_agc-camera.git vendor/xiaomi/AGC-camera 

echo "Cloning MIUI Camera..."
# MIUI Camera
git clone https://github.com/Amrito-Projects/vendor_xiaomi_miuicamera-veux.git vendor/xiaomi/miuicamera-veux
git clone https://github.com/Amrito-Projects/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera

rm -rf hardware/xiaomi/megvii

echo "Cloning clnag-17"
rm -rf prebuilts/clang/host/linux-x86/clang-r487747c
git clone https://gitlab.com/crdroidandroid/android_prebuilts_clang_host_linux-x86_clang-r487747c.git -b 14.0  prebuilts/clang/host/linux-x86/clang-r487747c
echo "Completed, proceeding to lunch"
