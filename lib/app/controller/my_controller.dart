import 'package:vanilla_getx/app/data/model/model.dart';
import 'package:vanilla_getx/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  //repository required
  final MyRepository repository;
  MyController({required this.repository});

  //use o snippet getfinal para criar está variável
  final _postsList = List<MyModel>.empty().obs;
  // ignore: invalid_use_of_protected_member
  get postList => _postsList.value;
  set postList(value) => _postsList.value = value;

  ///função para recuperar todos os posts
  getAll() {
    repository.getAll().then((data) {
      postList = data;
    });
  }
}
