import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../response/app_exceptions.dart';
import 'base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  String baseUrl = 'https://rickandmortyapi.com/';

  static Map<String, String> requestHeaders = {
    HttpHeaders.contentTypeHeader: 'multipart/form-data',
  };

  @override
  Future getApi(String apiEndPoint) async {
    if (kDebugMode) {
      print(apiEndPoint);
    }

    dynamic responseJson;
    try {
      final response = await http
          .get(
            Uri.parse(baseUrl + apiEndPoint),
            headers: requestHeaders
              ..addAll({
                HttpHeaders.acceptHeader: "application/json",
              }),
          )
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        if (kDebugMode) {
          print(responseJson);
        }
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        print('400 -> ${responseJson}');
        return responseJson;
      case 401:
        dynamic responseJson = jsonDecode(response.body);
        print('401 -> ${responseJson}');
        return responseJson;
      default:
        throw FetchDataException(
            'Error Occur while communicated to the server ${response.statusCode}');
    }
  }
}
