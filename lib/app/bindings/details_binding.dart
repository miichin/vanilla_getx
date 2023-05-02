// ignore_for_file: file_names

import 'package:vanilla_getx/app/controller/details_controller.dart'; // details_controller.dart 파일에서 DetailsController 클래스 import
import 'package:vanilla_getx/app/data/provider/api_helper.dart'; // api_helper.dart 파일에서 MyApiClient 클래스 import
import 'package:vanilla_getx/app/data/repository/posts_repository.dart'; // posts_repository.dart 파일에서 MyRepository 클래스 import
import 'package:get/get.dart'; // Get 패키지 import
import 'package:http/http.dart' as http; // Http 패키지에 있는 http 객체를 import

class DetailsBinding implements Bindings {
  // DetailsBinding 클래스
  @override
  void dependencies() {
    // Dependancy Injection 설정 메소드
    Get.lazyPut<DetailsController>(() {
      // lazyPut() 함수를 이용해 DetailsController 생성
      return DetailsController(repository: MyRepository(apiClient: MyApiClient(httpClient: http.Client()))); // 위에서 생성된 controller와 api helper, repository를 연동해주는 코드
    });
  }
}
