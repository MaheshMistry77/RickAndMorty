import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahesh_flutter_demo/src/presentation/details_screen/controller/detail_controller.dart';

import '../../../core/core_export.dart';
import '../../list_screen/model/list_model.dart';
import '../widget/detail_item_view.dart';

enum ScrollDirection { forward, backward }

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({super.key, required this.results});

  final Results? results;

  @override
  void dispose() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          AppTitles.appTitle,
          style: Get.textTheme.titleSmall?.copyWith(
            color: AppColors.white,
            fontWeight: Fonts.interSemiBold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
          onPressed: () {
            // Add onPressed callback for the search action
            Get.back();
          },
        ),
        centerTitle: false,
        // Center the title
        backgroundColor: AppColors.primaryColor, // Set app bar background color
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: true),
        child: DetailItemView(
          onPressed: () {},
          results: results,
        ),
      ),
    );
  }
}
