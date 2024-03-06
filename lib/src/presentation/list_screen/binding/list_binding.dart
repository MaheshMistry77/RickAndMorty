import 'package:get/get.dart';
import 'package:mahesh_flutter_demo/src/presentation/list_screen/controller/list_controller.dart';

import '../../../data/apiClient/api.dart';
import '../../../data/repository/posts_repository.dart';

class ListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListController>(() {
      return ListController(repository: MyRepository(apiClient: MyApiClient()));
    });
  }
}
