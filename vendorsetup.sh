echo "Cloning required stuffs..."

echo "Cloning Kernel..."
# Kernel
git clone https://github.com/MrTopia/kernel_xiaomi_sm6375.git kernel/xiaomi/sm6375 --depth=1
git clone https://github.com/MrTopia/device_xiaomi_veux-kernel.git device/xiaomi/veux-kernel

echo "Cloning Firmware tree..."
# Firmware Tree
git clone https://gitea.com/MrTopia/vendor_xiaomi_veux-firmware.git vendor/xiaomi/veux-firmware

echo "Cloning Vendor..."
# Vendor
git clone https://github.com/MrTopia/vendor_xiaomi_veux -b misound vendor/xiaomi/veux

echo "Cloning hardware related stuff..."
# Hardware
rm -rf hardware/xiaomi && git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi

echo "Cloning MIUI Camera..."
# MIUI Camera
git clone https://github.com/Positron-B/vendor_xiaomi_miuicamera-veux.git vendor/xiaomi/miuicamera-veux
git clone https://github.com/MrTopia/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera
cd vendor/xiaomi/veux/proprietary/system/priv-app/MiuiCamera/ && wget https://sourceforge.net/projects/tranquilacloud/files/MiuiCamera.apk && cd ../../../../../../..

echo "Cloning Audio Configs..."
# Audio Configs
rm -rf hardware/qcom-caf/sm8350/audio/configs/holi && git clone https://github.com/MrTopia/hardware_qcom-caf_sm8350_audio_configs_holi.git -b misound hardware/qcom-caf/sm8350/audio/configs/holi

echo "Cloning Sign keys..."
# Keys
cd vendor/everest/signing/keys/ && rm -rf BUILD && git clone https://github.com/MrTopia/signing_keys && cd ../../../..

echo "Completed, proceeding to lunch"
