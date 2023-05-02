// 콘솔 창에서 경고 메시지 출력 방지
// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:vanilla_getx/app/data/model/model.dart';
import 'package:http/http.dart' as http;

// 기본 URL 설정
const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

// HTTP 요청을 담당하는 클래스
class MyApiClient {
  // HTTP 클라이언트 객체 (http, http.Client, dio 등)를 파라미터로 받음
  http.Client httpClient;
  MyApiClient({required this.httpClient});

  // 모든 포스트 데이터 가져오기
  getAll() async {
    try {
      var response = await httpClient.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        // 가져온 데이터를 JSON 형식으로 디코딩하여 Iterable 객체로 저장
        Iterable jsonResponse = json.decode(response.body);
        // Iterable 객체에서 MyModel 타입의 리스트로 변환하고 반환
        List<MyModel> listMyModel = jsonResponse.map((model) => MyModel.fromJson(model)).toList();
        return listMyModel;
      } else {
        // 에러가 발생한 경우
        print('erro');
      }
    } catch (_) {}
  }
}
