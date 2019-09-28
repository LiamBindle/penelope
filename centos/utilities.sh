set -x
set -e

yum install -y bzip2 zip wget curl autoconf automake flex bison make python git vim which environment-modules patch libsigsegv libtool texinfo findutils xorg-x11-util-macros libpciaccess-devel numactl libxml2-devel gettext help2man libuuid-devel

mkdir /modulefiles
mkdir /modulefiles/gcc
cd /modulefiles
/usr/share/Modules/bin/createmodule.sh /opt/rh/devtoolset-7/enable > gcc/7
/usr/share/Modules/bin/createmodule.sh /opt/rh/devtoolset-8/enable > gcc/8