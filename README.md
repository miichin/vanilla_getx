# vanilla_getx
기본 getx_pattern 베이스 샘플
# flutter 버전 업그레이드시
android\build.gradle 파일
ext.kotlin_version 버전 변경
classpath 'com.android.tools.build:gradle:7.0.1' 버전 변경

android\app\build.gradle 파일
compileSdkVersion, targetSdkVersion 변경

android\gradle\wrapper\gradle-wrapper.properties 파일
distributionUrl=https\://services.gradle.org/distributions/gradle-7.0.2-all.zip 버전 변경

android\app\src\main\AndroidManifest.xml 파일
active 내부에 android:exported="true" 추가
 Manifest파일에 android:exported를 추가해 주고 true 혹은 false 값을 추가해주면 됩니다. 다른 애플리케이션 앱과 상호작용할 계획이 없다면 false를 저정합니다.  기존에는 이 값이 디폴트값으로 자동 적용되었으나 Android12부터는 명시적으로 지정