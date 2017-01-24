## For building CM13 based rom's (sprout)
repo init -u git://github.com/SeriniTY320/android.git -b cm-13.0 

repo sync

source build/envsetup.sh

lunch

make -j* otapackage
