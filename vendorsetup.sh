echo "Cloning Audio Configs...."
# Clone own audio config tree
rm -rf hardware/qcom-caf/sm8350/audio/configs/holi && git clone https://github.com/veux-frost-testzone/hardware_qcom-caf_sm8350_audio_configs_holi.git -b dolby hardware/qcom-caf/sm8350/audio/configs/holi --depth=1

echo "Cloning vendor..."
# Clone Vendor
git clone https://github.com/Amrito-Projects/vendor_xiaomi_veux.git vendor/xiaomi/veux

echo "Cloning hardware related stuff..."
# Hardware
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

echo "Cloning Kernel"
# Kernel
git clone https://github.com/PaimonLab/kernel_xiaomi_veux.git kernel/xiaomi/veux
