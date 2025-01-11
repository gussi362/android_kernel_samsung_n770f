#!/bin/bash

export ARCH=arm64
export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=t
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

echo 'cleaning old build';
make mrproper
echo 'making defconfig'
make ARCH=arm64 exynos9810-r7_defconfig
echo 'building kerenl'
make  ARCH=arm64 -j7 CC=./buildtools/clang/host/linux-x86/clang-r349610-jopp/bin/clang \ CROSS_COMPILE=./buildtools/gcc-cfp/gcc-cfp-jopp-only/aarch64-linux-android-4.9/bin/aarch64-linux-android- \ CLANG_TRIPLE=./buildtootls/gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
