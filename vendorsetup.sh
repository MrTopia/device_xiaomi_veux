echo "Cloning required stuffs..."

echo "Cloning Kernel..."
# Kernel
git clone https://github.com/MrTopia/kernel_xiaomi_sm6375.git kernel/xiaomi/sm6375 --depth=1

echo "Cloning Firmware tree..."
# Firmware Tree
git clone https://redkarmakar@bitbucket.org/mrtopia/vendor_xiaomi_veux-firmware.git vendor/xiaomi/veux-firmware

echo "Cloning Vendor..."
# Vendor
git clone https://github.com/MrTopia/vendor_xiaomi_veux -b 14.0 vendor/xiaomi/veux

echo "Cloning hardware related stuff..."
# Hardware
rm -rf hardware/xiaomi && git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

echo "Cloning Gcam stuff..."
# Gcam
git clone https://github.com/MrTopia/vendor_xiaomi_veux-gcam vendor/xiaomi/veux-gcam

echo "Cloning Audio Configs..."
# Audio Configs
rm -rf hardware/qcom-caf/sm8350/audio/configs/holi && git clone https://github.com/MrTopia/hardware_qcom-caf_sm8350_audio_configs_holi.git -b parts hardware/qcom-caf/sm8350/audio/configs/holi

echo "Cloning BCR..."
# BCR
git clone https://github.com/MrTopia/vendor_bcr vendor/bcr

echo "Completed, proceeding to lunch"
