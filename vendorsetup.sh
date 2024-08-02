echo "Cloning required stuffs..."

echo "Cloning Kernel..."
# Kernel
git clone https://github.com/derefernce23/kernel_xiaomi_sm6375.git kernel/xiaomi/sm6375 --depth=1


echo "Cloning Vendor..."
# Vendor
git clone https://github.com/MrTopia/android_vendor_xiaomi_veux -b fourteen vendor/xiaomi/veux

echo "Cloning MIUI Camera..."
# MIUI Camera
git clone https://github.com/Positron-B/vendor_xiaomi_miuicamera-veux.git vendor/xiaomi/miuicamera-veux
git clone https://github.com/Positron-B/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera

echo "Cloning Audio Configs..."
# Audio Configs
rm -rf hardware/qcom-caf/sm8350/audio/configs/holi && git clone https://github.com/MrTopia/hardware_qcom-caf_sm8350_audio_configs_holi.git -b parts hardware/qcom-caf/sm8350/audio/configs/holi

echo "Completed, proceeding to lunch"
