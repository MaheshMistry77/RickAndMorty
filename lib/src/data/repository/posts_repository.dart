import '../apiClient/api.dart';

class MyRepository {
  final MyApiClient apiClient;

  MyRepository({required this.apiClient}) : assert(apiClient != null);

  getCharacter() {
    return apiClient.getCharacter();
  }
}
