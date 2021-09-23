import 'package:vanilla_getx/app/bindings/details_binding.dart';
import 'package:vanilla_getx/app/ui/android/home/details_page.dart';
import 'package:vanilla_getx/app/ui/android/home/home_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const HomePage(),
    ),
    GetPage(name: Routes.DETAILS, page: () => const DetailsPage(), binding: DetailsBinding()), //dependencias de details via rota
  ];
}
