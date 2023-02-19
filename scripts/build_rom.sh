#!/bin/bash

cd ~
cd tmp
export ALLOW_MISSING_DEPENDENCIES=true
source build/envsetup.sh;

cd device/$OEM/$CODENAME;
mv aosp_sweet.mk $PRODUCT_NAME_$CODENAME.mk;
sed -i 's/aosp/$PRODUCT_NAME/g'$PRODUCT_NAME_$CODENAME.mk;
cd - ;
lunch $PRODUCT_NAME-$VARIANT

mka $TARGET -j$(nproc --all);
exit 0;
