###
# @version: v0.0.1
 # @Author: hailong.chen
 # @Date: 2019-10-05 11:48:37
 # @LastEditors: hailong.chen
 # @LastEditTime: 2019-10-10 09:08:34
 # @Descripttion: ios打包，修复指令有时候与Android不一样（10月份发生改动，具体原因不知道）
 ###
#!/bin/sh

#-------------------------------------------
# 2019.10.10
# 第一种
# main.jsbundle
#------------------------------------------- 

react-native bundle --platform ios --entry-file index.js --bundle-output ./bundles/main.jsbundle --dev false

code-push release  demo-ios ./bundles/main.jsbundle 0.0.1 --deploymentName Production --description "第四次更新" --mandatory false

echo '🌹🌹🌹🌹🌹🌹🌹🌹完成main.jsbundle 🌹🌹🌹🌹🌹🌹🌹🌹'


#-------------------------------------------
# 2019.10.10
# 第二种，类似Android
# index.ios.bundle
#------------------------------------------- 

#  react-native bundle --platform ios --entry-file index.js --bundle-output ./bundles/index.ios.bundle --assets-dest ./bundles --dev false
#  code-push release  demo-ios  ./bundles/ 2.2.2 --deploymentName Staging  --description "补丁222" --mandatory false
#  code-push release  demo-ios  ./bundles/ 2.2.2 --deploymentName Production  --description "补丁222" --mandatory false
#  echo '🌹🌹🌹🌹🌹🌹🌹🌹完成 index.ios.bundle🌹🌹🌹🌹🌹🌹🌹🌹'