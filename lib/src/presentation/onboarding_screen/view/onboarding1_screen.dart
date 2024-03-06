import 'package:flutter/material.dart';

import '../../../core/core_export.dart';

class OnBoarding1Screen extends StatelessWidget {
  const OnBoarding1Screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              AppAssets.bannerOne,
              width: 320,
              height: 320,
            ),
          )
        ],
      ),
    );
  }
}
