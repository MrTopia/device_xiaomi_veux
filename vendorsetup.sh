echo "Cloning required stuffs..."

echo "Cloning Kernel..."
# Kernel
git clone https://github.com/MrTopia/kernel_xiaomi_sm6375.git kernel/xiaomi/sm6375 --depth=1

echo "Cloning Firmware tree..."
# Firmware Tree
git clone https://gitea.com/MrTopia/vendor_xiaomi_veux-firmware.git vendor/xiaomi/veux-firmware

echo "Cloning Vendor..."
# Vendor
git lfs clone https://x-token-auth:ATCTT3xFfGN0Uahs70EPu15B2oO7aRdu5CI8QCkHtWkb60PXpfO4mg8kMfZUkkDpoUF3t-S-fp3Ivs5uveq1dHy_sH66lxFDtRdBFKj7S6_UaMnxs4E8wtKDzNdYuYY1enWJiAreTCETfRWWLpa0WAjEfsryjrHecVlxKaZTWlxZtUCAwjqX-UM=0BDEEE0F@bitbucket.org/mrtopia/vendor_xiaomi_veux.git -b parts vendor/xiaomi/veux

echo "Cloning hardware related stuff..."
# Hardware
rm -rf hardware/xiaomi && git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi

echo "Cloning MIUI Camera..."
# MIUI Camera
git clone https://github.com/Positron-B/vendor_xiaomi_miuicamera-veux.git vendor/xiaomi/miuicamera-veux
git clone https://github.com/MrTopia/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera

echo "Cloning Audio Configs..."
# Audio Configs
rm -rf hardware/qcom-caf/sm8350/audio/configs/holi && git clone https://github.com/MrTopia/hardware_qcom-caf_sm8350_audio_configs_holi.git -b parts hardware/qcom-caf/sm8350/audio/configs/holi

echo "Cloning Sign keys..."
# Keys
cd vendor/everest/signing/keys/ && rm -rf BUILD && git clone https://github.com/MrTopia/signing_keys && cd ../../../..

echo "Cloning BCR..."
# BCR
git clone https://github.com/MrTopia/vendor_bcr vendor/bcr

echo "Clonimg ViPER......."
# ViPER
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX


echo "Completed, proceeding to lunch"
