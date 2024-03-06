import 'package:get/get.dart';

import '../../../data/repository/posts_repository.dart';

class DetailController extends GetxController {
  final MyRepository repository;

  DetailController({required this.repository}) : assert(repository != null);

  var loading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
