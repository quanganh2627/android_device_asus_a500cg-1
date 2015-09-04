#!/bin/bash

#
# Run this script to remake the Android.mk in this directory after
# adding/removing .apk files.
#

echo 'LOCAL_PATH := $(my-dir)'
echo ''

for i in `find -name '*.apk'`
do
  base=$(echo $(basename $i .apk))
  dir=$(echo $(dirname $i))
  echo "###############################################################################"
  echo "include \$(CLEAR_VARS)"
  echo ""
  echo "LOCAL_MODULE := $base"
  echo "LOCAL_MODULE_TAGS := optional"
  echo "LOCAL_SRC_FILES := \$(LOCAL_MODULE)/\$(LOCAL_MODULE).apk"
  echo "LOCAL_MODULE_CLASS := APPS"
  echo "LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)"
  echo "LOCAL_CERTIFICATE := PRESIGNED"
  if [ -d "$dir/lib" ]; then
    deplibs=`find $dir -name '*.so' -exec basename {} .so \; | tr '\r\n' ' '`
    echo "LOCAL_REQUIRED_MODULES := $deplibs"
  fi
  echo ""
  echo "include \$(BUILD_PREBUILT)"
done
