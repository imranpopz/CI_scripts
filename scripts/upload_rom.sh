#!/bin/bash

cd ~
cd tmp
cd out/target/product/$CODENAME;
curl -T recovery.img temp.sh
curl -T *${CODENAME}*.zip temp.sh
exit 0;
