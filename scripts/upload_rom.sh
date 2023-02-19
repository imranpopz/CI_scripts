#!/bin/bash

cd ~
cd tmp
cd out/target/product/$CODENAME;
curl -T *${CODENAME}*.zip temp.sh
exit 0;
