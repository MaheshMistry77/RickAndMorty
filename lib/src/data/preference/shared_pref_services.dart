import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService extends GetxController {
  static SharedPreferences? preferences;

  static Future<void> setOnBording(value) async {
    preferences = await SharedPreferences.getInstance();
    preferences!.setBool('onbording', value);
  }

  static Future<bool?> getOnBording() async {
    preferences = await SharedPreferences.getInstance();
    var data = preferences!.getBool('onbording');
    return data;
  }

  Future<void> clearSharedPrefData() async {
    preferences = await SharedPreferences.getInstance();
    preferences!.clear().then((value) {});
  }
}
