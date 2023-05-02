import 'package:vanilla_getx/app/data/model/model.dart'; // model.dart 파일에서 MyModel 클래스 import
import 'package:vanilla_getx/app/data/repository/posts_repository.dart'; // posts_repository.dart 파일에서 MyRepository 클래스 import
import 'package:get/get.dart'; // Get 패키지 import

class MyController extends GetxController {
  // GetxController를 상속받는 MyController 클래스 선언
  final MyRepository repository; // MyRepository 객체 생성
  MyController({required this.repository}); // 생성자 선언

  final _postsList = List<MyModel>.empty().obs; // `MyModel` 타입의 List 값을 갖는 Rx(ReactiveX) 변수 `_postsList`를 생성합니다.
  get postList => _postsList.value; // `_postsList`의 값을 반환하는 getter 함수입니다. (ignore 주석은 `_postsList`가 Observable 이므로, `value` 변수를 사용해야한다는 경고를 무시하기 위한 것입니다.)
  set postList(value) => _postsList.value = value; // `_postsList`의 값을 변경하는 setter 함수입니다.

  getAll() {
    // 모든 게시물을 가져오는 메서드인 getAll() 함수를 정의합니다.
    repository.getAll().then((data) {
      // `MyRepository` 객체의 `getAll()` 함수를 실행하고, 그 결과를 받아 data 파라미터에 넘겨줍니다.
      postList = data; // data 값을 `_postsList`에 할당합니다. 그러면, `_postsList`가 변경됐다는 것을 알기 위해 Rx 변수의 `obs` 함수를 사용합니다.
    });
  }
}
