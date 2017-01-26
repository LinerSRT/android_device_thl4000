#!/bin/bash
source build/envsetup.sh
lunch cm_thl4000-userdebug
make -j8 bootimage
mka bacon
