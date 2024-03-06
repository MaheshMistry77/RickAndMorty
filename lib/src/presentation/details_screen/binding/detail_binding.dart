import 'package:get/get.dart';
import 'package:mahesh_flutter_demo/src/presentation/details_screen/controller/detail_controller.dart';

import '../../../data/apiClient/api.dart';
import '../../../data/repository/posts_repository.dart';

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(() {
      return DetailController(
          repository: MyRepository(apiClient: MyApiClient()));
    });
  }
}
