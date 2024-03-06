import 'package:mahesh_flutter_demo/src/theme/size_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'src/core/core_export.dart';
import 'src/routes/routes_export.dart';
import 'src/theme/theme_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes().lightTheme,
      darkTheme: AppThemes().darkTheme,
      title: AppTitles.appTitle,
      initialRoute: AppRoutes.onBoardingRoute,
      getPages: AppPages.pages,
      builder: (context, widget) {
        return MediaQuery(
          data:
              MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
          child: ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, widget!),
            breakpoints: [
              const ResponsiveBreakpoint.resize(
                350,
                name: MOBILE,
              ),
              const ResponsiveBreakpoint.autoScale(
                600,
                name: TABLET,
                scaleFactor: 1.3,
              ),
              const ResponsiveBreakpoint.autoScale(
                800,
                name: DESKTOP,
              ),
              const ResponsiveBreakpoint.autoScale(
                1200,
                name: 'XL',
                scaleFactor: 1.4,
              ),
            ],
          ),
        );
      },
    );
  }
}
