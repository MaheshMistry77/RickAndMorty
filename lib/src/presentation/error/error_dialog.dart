import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_sizes.dart';
import '../../data/error_model.dart';

class ErrorDialog extends StatelessWidget {
  final String title;
  ErrorModel errorModel;

  ErrorDialog({super.key, required this.title, required this.errorModel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      clipBehavior: Clip.none,
      title: Text(title, textAlign: TextAlign.center),
      content: SingleChildScrollView(child: getErrorContent()),
      actionsAlignment: MainAxisAlignment.center,
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(Sizes.p2),
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.p6),
            ),
          ),
          child: Text('Close', style: TextStyle(color: AppColors.white)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Widget getErrorContent() {
    if (errorModel != null) {
      return Column(
        children: <Widget>[
          //Text(errorModel!.status.toString()),
          const SizedBox(height: 10),
          // Add more content here
          Text(errorModel!.message.toString()),
        ],
      );
    } else {
      return const Column(
        children: <Widget>[
          //Text('Error!'),
          SizedBox(height: 10),
          // Add more content here
          Text("Something went wrong.Please try again!"),
        ],
      );
    }
  }
}
