import 'package:vanilla_getx/app/data/model/model.dart';
import 'package:vanilla_getx/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class DetailsController extends GetxController {
  final MyRepository repository;
  DetailsController({required this.repository});

  final _post = MyModel().obs;
  get post => _post.value;
  set post(value) => _post.value = value;

  //pratique
  editar(post) {
    print('editar');
  }

  //pratique
  delete(id) {
    print('deletar');
  }
}
