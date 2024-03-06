import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahesh_flutter_demo/src/presentation/onboarding_screen/view/onboarding1_screen.dart';
import 'package:mahesh_flutter_demo/src/presentation/onboarding_screen/view/onboarding2_screen.dart';
import 'package:mahesh_flutter_demo/src/presentation/onboarding_screen/view/onboarding3_screen.dart';
import 'package:mahesh_flutter_demo/src/routes/app_pages.dart';

import '../../../core/core_export.dart';
import '../widgets/header_section.dart';

class OnboardContentScreen extends StatefulWidget {
  const OnboardContentScreen({Key? key}) : super(key: key);

  @override
  State<OnboardContentScreen> createState() => _OnboardContentScreenState();
}

class _OnboardContentScreenState extends State<OnboardContentScreen> {
  late PageController _pageController;
  double _progress = 0.0;

  final duration = const Duration(milliseconds: 500);
  final easeOut = Curves.easeOut;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _progress = (_pageController.page ?? 0);
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              gapH12,
              HeaderSection(
                onPressed: () {
                  final lastPage = (_pageController.page ?? 0).toInt() + 2;
                  _pageController.animateToPage(
                    lastPage,
                    duration: duration,
                    curve: easeOut,
                  );
                },
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(overscroll: false),
                  child: PageView(
                    physics: const PageScrollPhysics(),
                    controller: _pageController,
                    children: const [
                      OnBoarding1Screen(),
                      OnBoarding2Screen(),
                      OnBoarding3Screen(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            height: 48,
            bottom: Sizes.p32,
            right: Sizes.p24,
            left: Sizes.p24,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Sizes.p6),
                ),
              ),
              child: DefaultTextStyle(
                style: Get.textTheme.bodyLarge!.copyWith(
                  color: AppColors.white,
                  fontWeight: Fonts.interMedium,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      fit: StackFit.passthrough,
                      children: [
                        Opacity(
                          opacity: _progress > 1 ? 0 : 1,
                          child: const Text(
                            'Next',
                          ),
                        ),
                        Opacity(
                          opacity: _progress > 1 ? 0 : 1,
                          child: const Text(
                            'Next',
                          ),
                        ),
                        Opacity(
                          opacity: _progress < 2 ? 0 : 1,
                          child: const Text(
                            'Get Started',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onPressed: () {
                final nextPage = (_pageController.page ?? 0).toInt() + 1;
                if (nextPage < 3) {
                  _pageController.animateToPage(
                    nextPage,
                    duration: duration,
                    curve: easeOut,
                  );
                } else {
                  Get.offAllNamed(
                    AppRoutes.listRoute,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
