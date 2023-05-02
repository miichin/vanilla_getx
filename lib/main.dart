// 필요한 패키지 및 파일 가져오기
import 'package:vanilla_getx/app/bindings/home_binding.dart';
import 'package:vanilla_getx/app/routes/app_pages.dart';
import 'package:vanilla_getx/app/translations/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/ui/android/home/home_page.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  // GetX의 GetMaterialApp을 사용하여 앱 실행
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false, // 디버그 배너 비활성화
    initialRoute: Routes.INITIAL, // 초기 경로 설정
    initialBinding: HomeBinding(), // 초기 바인딩 설정
    theme: appThemeData, // 사용자 정의 앱 테마 설정
    defaultTransition: Transition.fade, // 기본 전환 설정
    getPages: AppPages.routes, // 탐색 경로 설정
    home: const HomePage(), // 초기 페이지 설정
    locale: const Locale('ko', 'KR'), // 기본 언어 설정 (한국어)
    translationsKeys: AppTranslation.translations, // 번역 내용을 포함하는 키 설정<map>
  ));
}
