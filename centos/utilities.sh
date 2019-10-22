set -x
set -e

yum install -y bzip2 zip wget curl autoconf automake flex bison make python git vim which environment-modules patch libsigsegv libtool texinfo findutils xorg-x11-util-macros libpciaccess-devel numactl libxml2-devel gettext help2man libuuid-devel

wget https://github.com/Kitware/CMake/releases/download/v3.14.7/cmake-3.14.7-Linux-x86_64.tar.gz
tar -xf cmake-*
cp -r cmake-*/ /opt/cmake
rm -rf cmake-*
echo "export PATH=$PATH:/opt/cmake/bin" >> /init.rc 

mkdir /modulefiles
mkdir /modulefiles/gcc
cd /modulefiles
/usr/share/Modules/bin/createmodule.sh /opt/rh/devtoolset-7/enable > gcc/7
/usr/share/Modules/bin/createmodule.sh /opt/rh/devtoolset-8/enable > gcc/8