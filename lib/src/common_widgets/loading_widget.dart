import 'package:mahesh_flutter_demo/src/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  LoadingWidget({super.key, this.loadingColor});

  Color? loadingColor = AppColors.primaryColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: loadingColor ?? AppColors.primaryColor,
      ),
    );
  }
}
