// ignore_for_file: file_names

import 'package:vanilla_getx/app/controller/my_controller.dart';
import 'package:vanilla_getx/app/data/provider/api_helper.dart';
import 'package:vanilla_getx/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() {
      return MyController(repository: MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
