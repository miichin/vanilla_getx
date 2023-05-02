# vanilla_getx

이 프로젝트는 getx_pattern을 기반으로 한 샘플 앱입니다.

## Flutter 버전 업그레이드시 변경해야 할 사항
Flutter를 업그레이드할 때, 아래 파일들에서 몇 가지 버전 값을 변경해야합니다.

### android\build.gradle 파일
- `ext.kotlin_version` 변수의 값 변경
- `classpath 'com.android.tools.build:gradle:7.0.1'` 버전 변경

### android\app\build.gradle 파일
- `compileSdkVersion`, `targetSdkVersion` 값 변경

### android\gradle\wrapper\gradle-wrapper.properties 파일
- `distributionUrl=https\://services.gradle.org/distributions/gradle-7.0.2-all.zip` 버전 변경

### android\app\src\main\AndroidManifest.xml 파일
- `active` 내부에 `android:exported="true"` 추가

만약 현재 앱이 다른 앱과 상호작용하게끔 설계되어 있지 않다면, `android:exported` 값을 `false`로 설정해야 합니다. 이 값은 Android 12부터 명시적으로 지정해주어야 합니다.