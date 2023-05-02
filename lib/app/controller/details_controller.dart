import 'package:vanilla_getx/app/data/model/model.dart'; // model.dart 파일에서 MyModel 클래스 import
import 'package:vanilla_getx/app/data/repository/posts_repository.dart'; // posts_repository.dart 파일에서 MyRepository 클래스 import
import 'package:get/get.dart'; // Get 패키지 import
import 'package:meta/meta.dart'; // meta 패키지 import

class DetailsController extends GetxController {
  // GetxController를 상속받는 DetailsController 클래스 선언
  final MyRepository repository; // MyRepository 객체 생성
  DetailsController({required this.repository}); // 생성자 선언

  final _post = MyModel().obs; // MyModel을 인스턴스화한 후, `_post`의 기본값으로 `MyModel` 객체를 설정합니다. (Observable 타입)
  get post => _post.value; // `_post`의 값을 반환하는 getter 함수입니다.
  set post(value) => _post.value = value; // `_post`의 값을 변경하는 setter 함수입니다.

  //pratique
  editar(post) {
    // post 객체를 인자로 받는 editar() 함수입니다.
    print('editar'); // "editar" 문자열을 출력하는 코드입니다.
  }

  //pratique
  delete(id) {
    // id 값을 인자로 받는 delete() 함수입니다.
    print('deletar'); // "deletar" 문자열을 출력하는 코드입니다.
  }
}
