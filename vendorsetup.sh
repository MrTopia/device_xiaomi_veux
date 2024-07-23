echo "Cloning required stuffs..."

echo "Cloning Kernel..."
# Kernel
git clone https://github.com/MrTopia/kernel_xiaomi_sm6375.git kernel/xiaomi/sm6375 --depth=1

echo "Cloning Firmware tree..."
# Firmware Tree
git clone https://redkarmakar@bitbucket.org/mrtopia/vendor_xiaomi_veux-firmware.git vendor/xiaomi/veux-firmware

echo "Cloning Vendor..."
# Vendor
git clone https://github.com/MrTopia/vendor_xiaomi_veux -b oplus vendor/xiaomi/veux

echo "Cloning hardware related stuff..."
# Hardware
git clone https://github.com/AlphaDroid-Project/hardware_xiaomi.git hardware/xiaomi

echo "Cloning MIUI Camera..."
# MIUI Camera
git clone https://github.com/Positron-B/vendor_xiaomi_miuicamera-veux.git vendor/xiaomi/miuicamera-veux
git clone https://github.com/MrTopia/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera
cd vendor/xiaomi/veux/proprietary/system/priv-app/MiuiCamera/ && wget https://sourceforge.net/projects/tranquilacloud/files/MiuiCamera.apk && cd ../../../../../../..

echo "Cloning Audio Configs..."
# Audio Configs
rm -rf hardware/qcom-caf/sm8350/audio/configs/holi && git clone https://github.com/MrTopia/hardware_qcom-caf_sm8350_audio_configs_holi.git -b oplus hardware/qcom-caf/sm8350/audio/configs/holi

echo "Cloning Priv Keys..."
# Keys
git clone https://github.com/MrTopia/.android-certs

echo "Cloning BCR..."
# BCR
git clone https://github.com/MrTopia/vendor_bcr vendor/bcr

echo "Completed, proceeding to lunch"
