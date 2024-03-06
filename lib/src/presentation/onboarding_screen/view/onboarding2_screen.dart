import 'package:flutter/material.dart';

import '../../../core/core_export.dart';

class OnBoarding2Screen extends StatelessWidget {
  const OnBoarding2Screen({Key? key, this.onClick}) : super(key: key);

  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              AppAssets.bannerTwo,
              width: 320,
              height: 320,
            ),
          )
        ],
      ),
    );
  }
}
