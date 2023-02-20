#!/bin/bash

cd ~
cd tmp/rom
cd out/target/product/$CODENAME;
curl -T *${CODENAME}*.zip temp.sh
exit 0;
