#!/bin/bash

rm -Rf ./_PREPARED_RELEASE_LINUX
rm -Rf ./_PREPARED_RELEASE_LINUX_TEST
mkdir -p ./_PREPARED_RELEASE_LINUX

cp -r ./_RELEASE/Assets ./_PREPARED_RELEASE_LINUX
cp -r ./_RELEASE/ConfigOverrides ./_PREPARED_RELEASE_LINUX

mkdir -p ./_PREPARED_RELEASE_LINUX/Packs
cp -r ./_RELEASE/Packs/base ./_PREPARED_RELEASE_LINUX/Packs
cp -r ./_RELEASE/Packs/tutorial ./_PREPARED_RELEASE_LINUX/Packs
cp -r ./_RELEASE/Packs/cube ./_PREPARED_RELEASE_LINUX/Packs
cp -r ./_RELEASE/Packs/hypercube ./_PREPARED_RELEASE_LINUX/Packs
cp -r ./_RELEASE/Packs/orthoplex ./_PREPARED_RELEASE_LINUX/Packs

mkdir -p ./_PREPARED_RELEASE_LINUX/Profiles

cp ./_RELEASE/SSVOpenHexagonLinux ./_PREPARED_RELEASE_LINUX
cp ./_RELEASE/OHWorkshopUploaderLinux ./_PREPARED_RELEASE_LINUX

cp ./_RELEASE/libsdkencryptedappticket.so ./_PREPARED_RELEASE_LINUX
cp ./_RELEASE/libdiscord_game_sdk.so ./_PREPARED_RELEASE_LINUX
cp ./_RELEASE/libsteam_api.so ./_PREPARED_RELEASE_LINUX
cp ./_RELEASE/libz.so.1 ./_PREPARED_RELEASE_LINUX
cp /lib/x86_64-linux-gnu/libopenal.so.1 ./_PREPARED_RELEASE_LINUX
cp /lib/x86_64-linux-gnu/libFLAC.so.8 ./_PREPARED_RELEASE_LINUX
cp /lib/x86_64-linux-gnu/libsndio.so.7 ./_PREPARED_RELEASE_LINUX

cp ./_RELEASE/steam_appid.txt ./_PREPARED_RELEASE_LINUX

cp ./_RELEASE/run_ssvopenhexagon_linux.sh ./_PREPARED_RELEASE_LINUX

cd ./_PREPARED_RELEASE_LINUX

chmod +x ./*.so
chmod +x ./SSVOpenHexagonLinux
chmod +x ./OHWorkshopUploaderLinux

# echo "PACKING WITH UPX"
#
# for x in ./*.so; do
#     upx -9 $x &
# done
#
# upx -9 ./SSVOpenHexagonLinux &
# upx -9 ./OHWorkshopUploaderLinux &
#
# wait
# echo "DONE PACKING WITH UPX"

cd ..

cp -r ./_PREPARED_RELEASE_LINUX ./_PREPARED_RELEASE_LINUX_TEST

rm -Rf /media/sf_C_DRIVE/OHWorkspace/SSVOpenHexagon/_PREPARED_RELEASE_LINUX
cp -r ./_PREPARED_RELEASE_LINUX /media/sf_C_DRIVE/OHWorkspace/SSVOpenHexagon/
