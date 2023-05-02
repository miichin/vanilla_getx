// 파일 전체에서 대문자 상수 이름 사용을 허용하지 않음
// ignore_for_file: constant_identifier_names

part of './app_pages.dart'; // AppPages 클래스와 함께 사용됨을 의미함

abstract class Routes {
  // 추상 클래스 정의
  static const INITIAL = '/'; // 초기 화면 경로를 위한 상수
  static const DETAILS = '/details'; // 상세 화면 경로를 위한 상수
}
