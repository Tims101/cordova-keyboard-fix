#!/bin/bash
CURR_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

set -e

npm install -g cordova

cordova platform add ios android

cordova plugin add  cordova-plugin-statusbar \
                    com.ionic.keyboard \
                    com.telerik.plugins.wkwebview \
                    cordova-plugin-crosswalk-webview \
                    cordova-plugin-whitelist

cordova prepare

cp -R ${CURR_DIR}/additional/* ${CURR_DIR}/
