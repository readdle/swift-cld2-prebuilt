#!/bin/sh
current_dir="`pwd`"

git clone git@github.com:readdle/swift-android-cld2.git

if test "x$ANDROID_NDK" = x ; then
  echo should set ANDROID_NDK before running this script.
  exit 1
fi

pushd "$current_dir/jni"
	$ANDROID_NDK/ndk-build
popd

cp -r libs ../libs

rm -rf swift-android-cld2
rm -rf obj
rm -rf libs
