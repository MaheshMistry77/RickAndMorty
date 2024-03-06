import 'package:mahesh_flutter_demo/src/core/constants/constants_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahesh_flutter_demo/src/presentation/list_screen/model/list_model.dart';

import '../../../data/error_model.dart';
import '../../../data/repository/posts_repository.dart';
import '../../error/error_dialog.dart';

class ListController extends GetxController {
  final MyRepository repository;

  ListController({required this.repository}) : assert(repository != null);

  var loading = false.obs;

  var homeResponse = ListModel().obs;

  getCharacterListData(context, isLoading) {
    try {
      loading(isLoading);
      repository.getCharacter().then((data) {
        if (data is ListModel) {
          homeResponse(data);
          Get.snackbar(
              backgroundColor: AppColors.white,
              barBlur: 0,
              AppTitles.successTitle,
              AppTitles.successMessage);
        } else if (data is ErrorModel) {
          showDialog(
            context: context,
            builder: (context) {
              return ErrorDialog(
                  title: AppTitles.failureTitle,
                  errorModel:
                      ErrorModel(status: data.status, message: data.message));
            },
          );
        }
        loading(false);
      });
    } catch (e) {
      print('Exception: $e');
      loading(false);
    } finally {}
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
