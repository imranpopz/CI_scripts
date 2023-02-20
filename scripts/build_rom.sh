#!/bin/bash

cd ~
cd tmp
export ALLOW_MISSING_DEPENDENCIES=true
source build/envsetup.sh;


lunch ${PRODUCTNAME}_${CODENAME}-${VARIANT}
mka $TARGET -j$(nproc --all);

exit 0;
