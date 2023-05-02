import 'package:vanilla_getx/app/data/provider/api_helper.dart';

// Post 데이터를 담당하는 레포지토리 클래스
// 주의: API나 SQLite와 같은 데이터베이스에 영속적으로 저장되는 모든 엔티티마다 해당 엔티티를 제어하는 전용 레포지토리가 있어야함.
class MyRepository {
  final MyApiClient apiClient;

  MyRepository({required this.apiClient});

  // 모든 포스트 데이터 가져오기
  getAll() {
    return apiClient.getAll();
  }
}
