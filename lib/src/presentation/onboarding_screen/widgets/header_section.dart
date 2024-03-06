import 'package:flutter/material.dart';
import '../../../core/core_export.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.onPressed,
    this.buttonLabel,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String? buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          height: 45,
          AppAssets.appLogoPrimaryPng,
        ),
      ],
    );
  }
}
