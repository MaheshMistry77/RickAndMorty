import 'package:flutter_svg/flutter_svg.dart';

///* Imagery Styles
class AppAssets {
  /* 
  * ============= Logo ==============
   */
  static const appLogoPrimaryPng = 'assets/logo/app_logo.png';

  /* 
  * ============= Images ==============
   */
  // *Onboarding Screens
  static const bannerOne = 'assets/images/banner_1.png';
  static const bannerTwo = 'assets/images/banner_2.png';
  static const bannerTwoThree = 'assets/images/banner_3.png';


  static Future<void> preloadSVGs() async {
    final assets = [
      //* Logos
      appLogoPrimaryPng,
    ];
    for (final asset in assets) {
      final loader = SvgAssetLoader(asset);
      await svg.cache.putIfAbsent(
        loader.cacheKey(null),
        () => loader.loadBytes(null),
      );
    }
  }
}
