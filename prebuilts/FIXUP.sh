#!/bin/bash

#
# Run this script to remake the Android.mk in this directory after
# adding/removing .apk files.
#


if [ -z "$1" ]
  then
    src=
    echo 'LOCAL_PATH := $(my-dir)'
    echo ''
  else
    src="$1"
fi

for i in `find $src -name '*.apk'|sed 's:^./::1'`
do
  #base=$(echo $(basename $i .apk))
  #dir=$(echo $(dirname $i))
  base=$(basename $i .apk)
  dir=$(dirname $i)
  echo "###############################################################################"
  echo "include \$(CLEAR_VARS)"
  echo ""
  echo "LOCAL_MODULE := $base"
  echo "LOCAL_MODULE_TAGS := optional"
  #echo "LOCAL_SRC_FILES := \$(LOCAL_PATH)/\$(LOCAL_MODULE)/\$(LOCAL_MODULE).apk"
  echo "LOCAL_SRC_FILES := $i"
  echo "LOCAL_MODULE_CLASS := APPS"
  echo "LOCAL_MODULE_PATH := \$(TARGET_OUT_APPS)"
  echo "LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)"
  echo "LOCAL_CERTIFICATE := PRESIGNED"
  if [ -d "$dir/lib" ]; then
    deplibs=`find $dir -name '*.so' -exec basename {} .so \; | tr '\r\n' ' '`
    echo "LOCAL_REQUIRED_MODULES := $deplibs"
    echo ""
    echo "include \$(BUILD_PREBUILT)"
    
    echo "#Dependencies libs"
    for lib in `find $dir -name '*.so'|sed 's:^./::'`
      do echo "include \$(CLEAR_VARS)"
        echo "LOCAL_MODULE_CLASS := SHARED_LIBRARIES"
        echo "LOCAL_MODULE_TAGS:=optional"
        if [ "$(dirname $lib|tail -c 4)" == "x86" ]; then
          echo "LOCAL_MODULE_PATH := \$(TARGET_OUT_SHARED_LIBRARIES)"
        else 
          echo "LOCAL_MODULE_PATH := \$(TARGET_OUT_SHARED_LIBRARIES)/arm"
        fi
        echo "LOCAL_SRC_FILES := $lib"
        echo "LOCAL_MODULE := $(basename $lib .so)"
        echo "LOCAL_MODULE_STEM := $(basename $lib)"
        echo "include \$(BUILD_PREBUILT)"
        echo ""
    done
  else
    echo ""
    echo "include \$(BUILD_PREBUILT)"
  fi
done
