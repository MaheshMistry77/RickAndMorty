import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahesh_flutter_demo/src/core/constants/app_sizes.dart';
import 'package:mahesh_flutter_demo/src/validator/response_value_validator.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_fonts.dart';
import '../../list_screen/model/list_model.dart';

class DetailItemView extends StatelessWidget {
  const DetailItemView({
    Key? key,
    required this.onPressed,
    this.results,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Results? results;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: CachedNetworkImage(
                imageUrl: results!.image!,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )),
          gapW8,
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getValidatedStringValue(results!.name!),
                          style: Get.textTheme.headlineMedium?.copyWith(
                            color: AppColors.neutral800,
                            fontWeight: Fonts.interRegular,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: getStatusColor(results!.status!),
                              size: Sizes.p16,
                            ),
                            Text(
                              " ${getValidatedStringValue(results!.status!)} -  ${getValidatedStringValue(results!.gender!)}",
                              style: Get.textTheme.bodyLarge?.copyWith(
                                color: AppColors.neutral800,
                                fontWeight: Fonts.interRegular,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    gapH16,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Last known location:',
                          style: Get.textTheme.bodyLarge?.copyWith(
                            color: AppColors.neutral800,
                            fontWeight: Fonts.interRegular,
                          ),
                        ),
                        Text(
                          getValidatedStringValue(results!.location!.name!),
                          style: Get.textTheme.headlineSmall?.copyWith(
                            color: AppColors.neutral800,
                            fontWeight: Fonts.interRegular,
                          ),
                        ),
                      ],
                    ),
                    gapH16,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First seen in:',
                          style: Get.textTheme.bodyLarge?.copyWith(
                            color: AppColors.neutral800,
                            fontWeight: Fonts.interRegular,
                          ),
                        ),
                        Text(
                          getValidatedStringValue(results!.origin!.name!),
                          style: Get.textTheme.headlineSmall?.copyWith(
                            color: AppColors.neutral800,
                            fontWeight: Fonts.interRegular,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

Color getStatusColor(String status) {
  switch (status) {
    case 'Alive':
      return Colors.green;
    case 'Dead':
      return Colors.red;

    default:
      return Colors.grey;
  }
}
