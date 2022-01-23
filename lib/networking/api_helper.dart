import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'app_exceptions.dart';

class ApiBaseHelper {
  final String _baseUrl = "https://api.thecatapi.com";

  Future<dynamic> get(String url) async {
    print('Currently Getting: $url');
    var newURL = _baseUrl + url;
    var responseJson;
    try {
      final response = await http.get(Uri.parse(newURL), headers: {
        HttpHeaders.authorizationHeader:'860287a7-1421-4269-80fa-42c5c12a24f7'
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    print('API GET Successful');
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 404:
        throw Exception('404 error, you\'re doing very bad');
      case 200:
        var responseJson = jsonDecode(response.body.toString());
        print('Response success');
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
