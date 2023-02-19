#!/bin/bash

cd ~;
mkdir tmp;
cd tmp;


# Clone GREEN source
git clone $DEVICE_REPO -b $DEVICE_BRANCH "device/$OEM/$CODENAME";
ls device/$OEM/$CODENAME
#git clone $VENDOR_REPO -b $VENDOR_BRANCH "vendor/$OEM/$CODENAME";
#git clone $KERNEL_REPO -b $KERNEL_BRANCH "kernel/$OEM/$CODENAME";


# Initialize RED source
repo init -u $ROM_REPO -b $ROM_BRANCH --depth=1;

# Sync RED source
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags;

exit 0;
