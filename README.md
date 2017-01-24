##For building CM14 based rom's (sprout)

repo init -u git://github.com/SeriniTY320/android.git -b cm-14.0

repo sync

source build/envsetup.sh

lunch

make -j* otapackage
