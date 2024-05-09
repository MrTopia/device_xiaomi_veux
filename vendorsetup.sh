echo "Cloning required stuffs..."

echo "Cloning Kernel..."
# Kernel
git clone https://github.com/MrTopia/kernel_xiaomi_sm6375.git kernel/xiaomi/sm6375 --depth=1

echo "Cloning Firmware tree..."
# Firmware Tree
git clone https://github.com/MrTopia/vendor_xiaomi_veux-firmware vendor/xiaomi/veux-firmware

echo "Cloning Vendor..."
# Vendor
git clone https://github.com/MrTopia/android_vendor_xiaomi_veux vendor/xiaomi/veux

echo "Cloning hardware related stuff..."
# Hardware
rm -rf hardware/xiaomi && git clone https://github.com/PixelOS-AOSP/hardware_xiaomi hardware/xiaomi

echo "Cloning MIUI Camera..."
# MIUI Camera
git clone https://github.com/Positron-B/vendor_xiaomi_miuicamera-veux.git vendor/xiaomi/miuicamera-veux
git clone https://github.com/MrTopia/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera
cd vendor/xiaomi/veux/proprietary/system/priv-app/MiuiCamera/ && rm -rf MiuiCamera.apk && wget https://github.com/MrTopia/device_xiaomi_veux/releases/download/stuffs/MiuiCamera.apk && cd ../../../../../../..

echo "Cloning Priv Keys..."
# Keys
git clone https://github.com/MrTopia/.android-certs

echo "Completed, proceeding to lunch"
