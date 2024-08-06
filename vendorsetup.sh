echo "Cloning required stuffs..."

echo "Cloning Kernel..."
# Kernel
git clone https://github.com/MrTopia/kernel_xiaomi_sm6375.git kernel/xiaomi/sm6375 --depth=1

echo "Cloning Firmware tree..."
# Firmware Tree
git clone https://redkarmakar@bitbucket.org/mrtopia/vendor_xiaomi_veux-firmware.git vendor/xiaomi/veux-firmware

echo "Cloning Afterlife Keys..."
# Keys
git clone https://github.com/MrTopia/vendor_lineage-priv vendor/lineage-priv

echo "Cloning Vendor..."
# Vendor
git clone https://github.com/MrTopia/vendor_xiaomi_veux -b udc-wip vendor/xiaomi/veux

echo "Cloning MIUI Camera..."
# MIUI Camera
git clone https://github.com/Positron-B/vendor_xiaomi_miuicamera-veux.git vendor/xiaomi/miuicamera-veux
git clone https://github.com/MrTopia/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera
cd vendor/xiaomi/veux/proprietary/system/priv-app/MiuiCamera/ && rm -rf MiuiCamera.apk && wget https://github.com/MrTopia/device_xiaomi_veux/releases/download/stuffs/MiuiCamera.apk && cd ../../../../../../..

echo "Cloning Audio Configs..."
# Audio Configs
rm -rf hardware/qcom-caf/sm8350/audio/configs/holi && git clone https://github.com/MrTopia/hardware_qcom-caf_sm8350_audio_configs_holi.git -b parts hardware/qcom-caf/sm8350/audio/configs/holi

echo "Cloning Overlays..."
# Overlays
cd packages/apps/Settings/res/drawable/ && rm -rf maintainer_img.jpg && wget https://github.com/MrTopia/device_xiaomi_veux/releases/download/stuffs/maintainer_img.jpg && cd ../../../../..
cd packages/apps/Settings/res/values/ && rm -rf afterlife_strings.xml && wget https://github.com/MrTopia/device_xiaomi_veux/releases/download/stuffs/afterlife_strings.xml && cd ../../../../..

echo "Cloning BCR..."
# BCR
git clone https://github.com/MrTopia/vendor_bcr vendor/bcr

echo "Clonimg ViPER......."
# ViPER
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX

echo "Clonimg GAPPS......."
# GAPPS
git clone https://gitlab.com/MindTheGapps/vendor_gapps vendor/gapps

echo "Completed, proceeding to lunch"
