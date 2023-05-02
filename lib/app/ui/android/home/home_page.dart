// app/controller/my_controller.dart에서 MyController 클래스 가져오기
import 'package:vanilla_getx/app/controller/my_controller.dart';
// material 패키지에서 Flutter 위젯 관련 클래스 가져오기
import 'package:flutter/material.dart';
// GetX 패키지에서 GetView, GetX 클래스 가져오기
import 'package:get/get.dart';

// HomePage 클래스를 GetView<MyController>로 선언하며, MyController 클래스의 인스턴스를 상속받음
class HomePage extends GetView<MyController> {
  // 생성자 선언
  const HomePage({Key? key}) : super(key: key);

  // build 메서드 구현
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱바 생성
      appBar: AppBar(title: const Text('HomePage')),
      body: GetX<MyController>(
        initState: (state) {
          // 초기화 시 MyController 객체를 찾아 getAll 메서드 호출
          Get.find<MyController>().getAll();
        },
        builder: (_) {
          return _.postList.length < 1
              // postList가 비어있는 경우 로딩 스피너 표시
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              // postList에 저장된 데이터들을 ListTile로 구성하여 ListView 반환
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_.postList[index].title),
                      subtitle: Text(_.postList[index].body),
                    );
                  },
                  itemCount: _.postList.length,
                );
        },
      ),
    );
  }
}
