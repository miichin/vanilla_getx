import 'package:flutter/material.dart';

// 앱의 테마 데이터 정의
final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.blueAccent, // 기본 색상을 블루 액센트로 정함
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
  // Swatch에서 색상 스키마를 가져와 거기에 두번째 색상을 blue로 변경함.
);
