<!--
 * @version: v0.0.1
 * @Author: hailong.chen
 * @Date: 2019-10-05 11:56:20
 * @LastEditors: hailong.chen
 * @LastEditTime: 2019-10-09 18:17:57
 * @Descripttion: 
 -->
 
 code-push app ls
 code-push app add demo-android android react-native
 
 code-push app add demo-ios ios react-native
 
 
 $(BUILD_DIR)/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)
 $(inherited) $(SRCROOT)/../node_modules/react-native-code-push/ios/CodePush/**
 


code-push deployment history demo-ios Staging
code-push deployment history demo-ios Production

react-native bundle --platform ios --entry-file index.js --bundle-output ./bundles/index.ios.bundle --assets-dest ./bundles --dev false
react-native bundle --platform ios --entry-file index.js --bundle-output ./bundles/index.ios.bundle --assets-dest ./bundles --dev false


code-push release  demo-ios  ./bundles/ 0.0.1 --deploymentName Staging  --description "补丁" --mandatory false
code-push release  demo-ios  ./bundles/ 0.0.1 --deploymentName Production  --description "补丁" --mandatory false
code-push release-react  demo-ios ios
code-push release-react  demo-ios ios  --deploymentName Production

ios 指令更改

问题：
```
2019-10-09 21:36:51.357 [info][tid:com.facebook.react.JavaScript] [CodePush] Update is invalid - A JS bundle file named "main.jsbundle" could not be found within the downloaded contents. Please ensure that your app is syncing with the correct deployment and that you are releasing your CodePush updates using the exact same JS bundle file name that was shipped with your app's binary.
2019-10-09 21:36:51.357513+0800 hot_demo[483:35244] [CodePush] Update is invalid - A JS bundle file named "main.jsbundle" could not be found within the downloaded contents. Please ensure that your app is syncing with the correct deployment and that you are releasing your CodePush updates using the exact same JS bundle file name that was shipped with your app's binary.
[CodePush] Applying full update.
2019-10-09 21:47:23.391431+0800 hot_demo[483:37947] Task <8E11E32D-348B-41A6-B072-60FC5BD1605D>.<4> load failed with error Error Domain=NSURLErrorDomain Code=-999 "cancelled" UserInfo={NSErrorFailingURLStringKey=http://hailong.vaiwan.com/reportStatus/download, NSErrorFailingURLKey=http://hailong.vaiwan.com/reportStatus/download, _NSURLErrorRelatedURLSessionTaskErrorKey=(
2019-10-09 21:47:23.391632+0800 hot_demo[483:37947] Task <8E11E32D-348B-41A6-B072-60FC5BD1605D>.<4> finished with error - code: -999
2019-10-09 21:47:26.562 [info][tid:com.facebook.react.JavaScript] [CodePush] Reporting CodePush update success (v8)
2019-10-09 21:47:26.562320+0800 hot_demo[483:38158] [CodePush] Reporting CodePush update success (v8)


```

解决：
```


react-native bundle --platform ios --entry-file index.js --bundle-output ./bundles/main.jsbundle --dev false

code-push release  demo-ios ./bundles/main.jsbundle 0.0.1 --deploymentName Production --description "第四次更新" --mandatory false


完善



react-native bundle --platform ios --entry-file index.js --bundle-output ./bundles/main.jsbundle --assets-dest ./bundles --dev false

code-push release  demo-ios ./bundles/ 0.0.1 --deploymentName Production --description "第四次更新" --mandatory false


```


参考

```
打包命令:

// react-native bundle --platform 平台 --entry-file 启动文件 --bundle-output 打包js输出文件 --assets-dest 资源输出目录 --dev 是否调试
打包整个项目的js文件:
react-native bundle --platform ios --entry-file index.js --bundle-output ./bundle/main.jsbundle --dev false
 

发布命令:

// code-push release <应用名称> <Bundles所在目录> <对应的应用版本> --deploymentName 更新环境 --description 更新描述 --mandatory 是否强制更新
例如:
code-push release demo ./bundle/main.jsbundle 1.0.0 --deploymentName Production --description "第四次更新" --mandatory true
 

js文件+图片资源:

// 1. –assets-dest 后就是放图片的文件夹路径
react-native bundle --platform ios --entry-file index.js --bundle-output ./bundle/main.jsbundle --assets-dest ./bundle --dev false
 
// 2. push bundles文件
code-push <release/debug> <projectName(与注册的app同名)><bundle文件名> <版本号>
例如:
code-push release appName ./bundle 1.0.0



```



code-push deployment history demo-android   Production
code-push deployment history demo-android   Staging

react-native bundle --platform android --entry-file index.js --bundle-output ./bundles/index.android.bundle --assets-dest ./bundles --dev false


code-push release  demo-android  ./bundles/ 2.2.2 --deploymentName Staging  --description "补丁0.0.333" --mandatory false
code-push release  demo-android  ./bundles/ 2.2.2 --deploymentName Production  --description "补丁0.0.1" --mandatory false


```
 code-push deployment ls demo-android -k
 code-push deployment ls demo-ios -k
 
 
 code-push deployment ls returnVisit-android -k


debug {
                signingConfig signingConfigs.debug
                 minifyEnabled enableProguardInReleaseBuilds
                 proguardFiles getDefaultProguardFile("proguard-android.txt"), "proguard-rules.pro"
            }
        release {
            signingConfig signingConfigs.release
            minifyEnabled enableProguardInReleaseBuilds
            proguardFiles getDefaultProguardFile("proguard-android.txt"), "proguard-rules.pro"
        }

  new CodePush(
              getResources().getString(R.string.reactNativeCodePush_androidDeploymentKey),
              getApplicationContext(),
               BuildConfig.DEBUG,
               getResources().getString(R.string.reactNativeCodePush_androidServerURL)
            )



releaseStaging {
                buildConfigField "String", "CODEPUSH_KEY", '"P3BFma3ZXAeP0TooqlXLfbyMnV3d4ksvOXqog"'
                signingConfig signingConfigs.release
            }
