import 'package:flutter/material.dart';

import '../../../core/core_export.dart';

class OnBoarding3Screen extends StatelessWidget {
  const OnBoarding3Screen({Key? key, this.onClick}) : super(key: key);

  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              AppAssets.bannerTwoThree,
              width: 420,
              height: 420,
            ),
          )
        ],
      ),
    );
  }
}
