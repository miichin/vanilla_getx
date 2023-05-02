import 'package:vanilla_getx/app/bindings/details_binding.dart'; // Details 화면에서 사용되는 Binding 클래스 임포트
import 'package:vanilla_getx/app/ui/android/home/details_page.dart'; // Details 화면을 위한 StatefulWidget 임포트
import 'package:vanilla_getx/app/ui/android/home/home_page.dart'; // Home 화면을 위한 StatefulWidget 임포트
import 'package:get/get.dart'; // GetX를 사용하기 위해 가져온 패키지
part './app_routes.dart'; // 앱 경로 상수를 정의한 파일임을 나타냄

class AppPages {
  // 페이지 라우팅을 전담하는 클래스
  static final routes = [
    // 각각의 경로와 화면, 바인딩을 설정한 리스트
    GetPage(
      name: Routes.INITIAL, // 초기 경로를 나타내는 'Routes.INITIAL' 상수
      page: () => const HomePage(), // '/' 경로에 대응하는 홈 화면 위젯
    ),
    GetPage(
      // '/details' 경로에 대응하는 페이지 설정
      name: Routes.DETAILS, // 디테일 페이지 경로 상수
      page: () => const DetailsPage(), //디테일 페이지 위젯
      binding: DetailsBinding(), // 디테일 페이지 위젯에 적용될 Binding 클래스
    ),
  ];
}
