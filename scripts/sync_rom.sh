#!/bin/bash

cd ~;
mkdir tmp;
cd tmp;

git config --global user.name "imranpopz";
git config --global user.email "imranpopz32@gmail.com";
git config --global color.ui auto

# Clone GREEN source
git clone $DEVICE_REPO -b $DEVICE_BRANCH "device/$OEM/$CODENAME";
cd device/$OEM/$CODENAME;
mv aosp_sweet.mk $PRODUCT_NAME_$CODENAME.mk;
sed -i 's/aosp/$PRODUCT_NAME/g' $PRODUCT_NAME_$CODENAME.mk;
sed -i 's/aosp/$PRODUCT_NAME/g' AndroidProducts.mk;
cd - ;
ls device/$OEM/$CODENAME
#git clone $VENDOR_REPO -b $VENDOR_BRANCH "vendor/$OEM/$CODENAME";
#git clone $KERNEL_REPO -b $KERNEL_BRANCH "kernel/$OEM/$CODENAME";


# Initialize RED source
#repo init -u $ROM_REPO -b $ROM_BRANCH --depth=1;

# Sync RED source
#repo sync

exit 0;
