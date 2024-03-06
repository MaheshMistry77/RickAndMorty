import 'package:flutter/services.dart';
import 'package:mahesh_flutter_demo/src/presentation/details_screen/view/detail_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahesh_flutter_demo/src/presentation/list_screen/controller/list_controller.dart';

import '../../../common_widgets/loading_widget.dart';
import '../../../core/core_export.dart';
import '../widget/character_list_item_view.dart';

enum ScrollDirection { forward, backward }

class ListScreen extends GetView<ListController> {
  const ListScreen({super.key});

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
        actions: <Widget>[
          // Add actions to the app bar
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: AppColors.white,
            ),
            onPressed: () {
              // Add onPressed callback for the search action
              SystemNavigator.pop();
            },
          ),
        ],
        centerTitle: false, // Center the title
        backgroundColor: AppColors.primaryColor, // Set app bar background color
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: RefreshIndicator(
          onRefresh: () {
            controller.getCharacterListData(context, false);
            return Future.value();
          },
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: true),
            child: GetX<ListController>(
              initState: (_) {
                controller.getCharacterListData(context, true);
              },
              builder: (ListController controller) {
                if (controller.loading.value) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LoadingWidget(
                      loadingColor: AppColors.secondaryColor,
                    ),
                  );
                }
                if (controller.homeResponse!.value.results == null) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text("No data available! Please try again later."),
                    ),
                  );
                }
                return SizedBox(
                  child: ListView.builder(
                    itemCount: controller.homeResponse!.value.results!.length,
                    // Number of items in the list
                    itemBuilder: (BuildContext context, int index) {
                      // itemBuilder builds each item in the list
                      return CharacterListItemView(
                        onPressed: () {
                          Get.to(DetailScreen(
                              results: controller
                                  .homeResponse!.value.results![index]));
                        },
                        results: controller.homeResponse!.value.results![index],
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
