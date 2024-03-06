import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../core/core_export.dart';
import 'theme_export.dart';

class AppThemes {
  final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.yellow500,
    splashColor: AppColors.white,
// * ===== AppBar Theme ======
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.white,
      shadowColor: Colors.transparent,
      surfaceTintColor: AppColors.white,
      actionsIconTheme: const IconThemeData(),
      iconTheme: IconThemeData(
        color: AppColors.neutral800,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      titleTextStyle: AppStyle.heading4Style,
    ),
// * ===== Text Theme ======
    textTheme: TextTheme(
      //* Heading 1 (H1)
      headlineLarge: AppStyle.heading1Style,
      //* Heading 2 (H2)
      headlineMedium: AppStyle.heading2Style,
      //* Heading 3 (H3)
      headlineSmall: AppStyle.heading3Style,
      //* Heading 4 (H4)
      displayLarge: AppStyle.heading4Style,
      //* Heading 5 (H5)
      displayMedium: AppStyle.heading5Style,
// * ========= BODY (Parapgraphs) ===========
      // * p1-b (Paragraph 1 Bold)
      displaySmall: AppStyle.paragraph1Bold,
      // * p2-b (Paragraph 2 Bold)
      titleLarge: AppStyle.paragraph2Bold,
      // * p3-b (Paragraph 3 Bold)
      titleMedium: AppStyle.paragraph3Bold,
// * ========= Labels ===========
      // * l1-b (Label 1 Bold)
      titleSmall: AppStyle.label1Bold,
      // * l2-b (Label 2 Bold)
      bodyLarge: AppStyle.label2Bold,
      // * l3-b (Label 3 Bold)
      bodyMedium: AppStyle.label3Bold,
      // * l4-b (Label 4 Bold)
      bodySmall: AppStyle.label4Bold,
    ),
// * ===== ColorScheme Theme ======
    colorScheme: ColorScheme(
      background: Colors.white,
      brightness: Brightness.light,
      error: Colors.red,
      onError: Colors.red,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.primaryColor,
      onBackground: Colors.white,
      secondary: AppColors.secondaryColor,
      onSecondary: AppColors.secondaryColor,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.white,
    //*TODO: Change to a darker color
// * ===== AppBar Theme ======
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: AppStyle.heading4Style,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.neutral800,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ), //*TODO: Change to a darker color
    ),
    primaryColor: AppColors.primaryColor,
    splashColor: AppColors.neutral100,
// * ===== Text Theme ======
    textTheme: TextTheme(
      //* Heading 1 (H1)
      headlineLarge: AppStyle.heading1Style,
      //* Heading 2 (H2)
      headlineMedium: AppStyle.heading2Style,
      //* Heading 3 (H3)
      headlineSmall: AppStyle.heading3Style,
      //* Heading 4 (H4)
      displayLarge: AppStyle.heading4Style,
      //* Heading 5 (H5)
      displayMedium: AppStyle.heading5Style,
// * ========= BODY (Parapgraphs) ===========
      // * p1-b (Paragraph 1 Bold)
      displaySmall: AppStyle.paragraph1Bold,
      // * p2-b (Paragraph 2 Bold)
      titleLarge: AppStyle.paragraph2Bold,
      // * p3-b (Paragraph 3 Bold)
      titleMedium: AppStyle.paragraph3Bold,
// * ========= Labels ===========
      // * l1-b (Label 1 Bold)
      titleSmall: AppStyle.label1Bold,
      // * l2-b (Label 2 Bold)
      bodyLarge: AppStyle.label2Bold,
      // * l3-b (Label 3 Bold)
      bodyMedium: AppStyle.label3Bold,
      // * l4-b (Label 4 Bold)
      bodySmall: AppStyle.label4Bold,
    ),
// * ===== ColorScheme Theme ======
    colorScheme: ColorScheme(
      background: Colors.black,
      brightness: Brightness.dark,
      error: Colors.red,
      onError: Colors.red,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.primaryColor,
      onBackground: Colors.black,
      secondary: AppColors.secondaryColor,
      onSecondary: AppColors.secondaryColor,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
  );
}
