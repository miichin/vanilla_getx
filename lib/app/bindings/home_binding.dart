// ignore_for_file: file_names

// app/controller/my_controller.dart 파일에서 MyController 클래스 가져오기
import 'package:vanilla_getx/app/controller/my_controller.dart';
// app/data/provider/api_helper.dart 파일에서 MyApiClient 클래스 가져오기
import 'package:vanilla_getx/app/data/provider/api_helper.dart';
// app/data/repository/posts_repository.dart에서 MyRepository 클래스 가져오기
import 'package:vanilla_getx/app/data/repository/posts_repository.dart';
// GetX 패키지에서 Get 클래스 가져오기
import 'package:get/get.dart';
// http 패키지에서 http.Client 클래스 가져오기
import 'package:http/http.dart' as http;

// HomeBinding 클래스를 Bindings 클래스로 선언
class HomeBinding implements Bindings {
  // 의존성 주입을 위한 dependencies 메서드를 구현
  @override
  void dependencies() {
    // MyController 클래스를 Get.lazyPut으로 등록하고, MyRepository 클래스와 MyApiClient(httpClient: http.Client())를 매개변수로 전달해 생성한 인스턴스로 초기화하여 리턴
    Get.lazyPut<MyController>(() {
      return MyController(repository: MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
