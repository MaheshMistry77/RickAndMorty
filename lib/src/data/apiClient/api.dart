import 'package:mahesh_flutter_demo/src/core/constants/app_titles.dart';
import 'package:mahesh_flutter_demo/src/presentation/list_screen/model/list_model.dart';

import '../error_model.dart';
import '../provider/network_api_services.dart';
import '../response/app_exceptions.dart';

class MyApiClient {
  final _apiServices = NetworkApiServices();

  MyApiClient();

  getCharacter() async {
    try {
      var response = await _apiServices.getApi("api/character");
      if (response['info'] != null) {
        ListModel listModel = ListModel.fromJson(response);
        return listModel;
      } else {
        ErrorModel errorModel = ErrorModel.fromJson(response);
        return errorModel;
      }
    } catch (_) {
      if (_ is InternetException) {
        ErrorModel errorModel =
            ErrorModel(message: AppTitles.noInternetMessage, status: 'Failure');
        return errorModel;
      } else {
        ErrorModel errorModel =
            ErrorModel(message: AppTitles.failureMessage, status: 'Failure');
        return errorModel;
      }
    }
  }
}
