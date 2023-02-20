#!/bin/bash

cd ~
cd tmp/rom
export ALLOW_MISSING_DEPENDENCIES=true
source build/envsetup.sh;


lunch ${PRODUCTNAME}_${CODENAME}-${VARIANT}

export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 20G # It took only 6.4GB for mido
ccache -o compression=true # Will save times and data to download and upload ccache, also negligible performance issue
ccache -z # Clear old stats, so monitor script will provide real ccache statistics

mka $TARGET -j$(nproc --all);

exit 0;
