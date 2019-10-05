<!--
 * @version: v0.0.1
 * @Author: hailong.chen
 * @Date: 2019-10-05 11:56:20
 * @LastEditors: hailong.chen
 * @LastEditTime: 2019-10-05 11:59:13
 * @Descripttion: 
 -->
 
 
 code-push app add demo-android android react-native
 
 code-push app add demo-ios ios react-native
 
 
 $(BUILD_DIR)/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)
 $(inherited) $(SRCROOT)/../node_modules/react-native-code-push/ios/CodePush/**
 


code-push deployment history demo-ios Staging
code-push deployment history demo-ios Production

react-native bundle --platform ios --entry-file index.js --bundle-output ./bundles/index.ios.bundle --assets-dest ./bundles --dev false

code-push release  demo-ios ios  ./bundles/ 0.0.1 --deploymentName Staging  --description "补丁" --mandatory false
code-push release-react  demo-ios ios
code-push release-react  demo-ios ios  --deploymentName Production



code-push deployment history demo-android   Production
code-push deployment history demo-android   Staging

react-native bundle --platform android --entry-file index.js --bundle-output ./bundles/index.android.bundle --assets-dest ./bundles --dev false


code-push release  demo-android  ./bundles/ 2.2.2 --deploymentName Staging  --description "补丁0.0.1" --mandatory false


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
