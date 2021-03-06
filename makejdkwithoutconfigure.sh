#!/bin/bash
# duplicate of buildjdk.sh that avoids reconfiguring. Used for making changes to openjdk code.

set -e
. setdevkitpath.sh
export FREETYPE_DIR=`pwd`/freetype-${BUILD_FREETYPE_VERSION}/build_android-${TARGET_SHORT}
export CUPS_DIR=`pwd`/cups-2.2.4

cd openjdk
cd build/linux-${TARGET_JDK}-normal-server-release
make JOBS=4 images
