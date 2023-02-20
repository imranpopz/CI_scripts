#!/bin/bash

cd ~;
mkdir tmp;
cd tmp;
mkdir rom;
cd rom;

git config --global user.name "imranpopz";
git config --global user.email "imranpopz32@gmail.com";
git config --global color.ui auto

# Clone GREEN source
git clone $DEVICE_REPO -b $DEVICE_BRANCH "device/$OEM/$CODENAME";
cd device/$OEM/$CODENAME
mv aosp_sweet.mk ${PRODUCTNAME}_${CODENAME}.mk
sed -i "s/aosp/$PRODUCTNAME/g" ${PRODUCTNAME}_${CODENAME}.mk
sed -i "s/aosp/$PRODUCTNAME/g" AndroidProducts.mk
sed -i "s/aosp/$PRODUCTNAME/g" BoardConfig.mk
cd -

#git clone $VENDOR_REPO -b $VENDOR_BRANCH "vendor/$OEM/$CODENAME";
#git clone $KERNEL_REPO -b $KERNEL_BRANCH "kernel/$OEM/$CODENAME";


# Initialize RED source
#repo init -u $ROM_REPO -b $ROM_BRANCH --depth=1 -g default,-device,-mips,-darwin,-notdefault;

# Sync RED source
#repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync 

git clone -b Tiramisu https://github.com/Project-Elixir/hardware_xiaomi.git hardware/xiaomi

exit 0;
