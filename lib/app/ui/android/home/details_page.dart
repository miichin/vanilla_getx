import 'package:vanilla_getx/app/controller/my_controller.dart'; // MyController 클래스를 가져옴
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // GetX 패키지를 가져옴

class DetailsPage extends GetView<MyController> {
  // MyController 클래스를 사용하는 GetView 상속 클래스 정의
  const DetailsPage({Key? key}) : super(key: key); // 생성자 정의

  @override
  Widget build(BuildContext context) {
    // 화면 빌드 함수 정의
    return Scaffold(
      // 앱 전체 구조를 만드는 최상위 위젯
      appBar: AppBar(title: const Text('HomePage')), // 상단 앱바 설정
      body: GetX<MyController>(initState: (state) {
        // GetX 위젯 생성 및 initState 함수 정의
        Get.find<MyController>().getAll(); // MyController 클래스 객체에서 getAll 함수 호출함으로써 데이터를 불러옴
      }, builder: (_) {
        // GetX 위젯의 builder 함수 정의. _는 MyController 클래스의 인스턴스임.
        return _.postList.length < 1 // postList 길이가 1보다 작으면
            ? const Center(
                // 로딩 중이라는 표시를 나타내는 위젯을 화면 중앙에 배치
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                // postList 길이가 1 이상이면 리스트 뷰를 만들어서 반환
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_.postList[index].title), // 제목 출력
                    subtitle: Text(_.postList[index].body), // 내용 출력
                  );
                },
                itemCount: _.postList.length, // 빌드할 아이템 수는 postList 길이와 같음
              );
      }),
    );
  }
}
