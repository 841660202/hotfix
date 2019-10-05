###
# @version: v0.0.1
 # @Author: hailong.chen
 # @Date: 2019-10-05 11:48:37
 # @LastEditors: hailong.chen
 # @LastEditTime: 2019-10-05 11:48:37
 # @Descripttion:
 ###
#!/bin/sh
 react-native bundle --platform android --entry-file index.js --bundle-output ./bundles/index.android.bundle --assets-dest ./bundles --dev true
 code-push release  demo-android  ./bundles/ 2.2.2 --deploymentName Production  --description "补丁222" --mandatory false
 echo '🌹🌹🌹🌹🌹🌹🌹🌹完成 🌹🌹🌹🌹🌹🌹🌹🌹'
