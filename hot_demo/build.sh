###
# @version: v0.0.1
 # @Author: hailong.chen
 # @Date: 2019-10-05 11:48:37
 # @LastEditors: hailong.chen
 # @LastEditTime: 2019-10-05 11:48:37
 # @Descripttion:
 ###
#!/bin/sh
#  cd android && ./gradlew installRelease
  cd android && ./gradlew assembleRelease
  cd ..
  echo '打包结束,正在打开apk包目录。。。'
  open ./android/app/build/outputs/apk/release
  echo '🌹🌹🌹🌹🌹🌹🌹🌹完成 🌹🌹🌹🌹🌹🌹🌹🌹''
