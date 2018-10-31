system=$(uname -s | tr 'DL' 'dl')-$(uname -m)
toolchain=llvm
abi=arm64-v8a
platform=android-24
PYTHONPATH=/opt/ros/kinetic/lib/python2.7/dist-packages:$PYTHONPATH
# Enable this value for debug build
#CMAKE_BUILD_TYPE=Debug
CMAKE_BUILD_TYPE=Release
# Enable this if you need to use pluginlib in Android.
# The plugins will be statically linked
use_pluginlib=1

