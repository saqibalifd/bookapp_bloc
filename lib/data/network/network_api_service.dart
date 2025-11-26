import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:bookapp/data/network/base_api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../exception/app_exceptions.dart';

/// Class for handling network API requests.
class NetworkApiService implements BaseApiServices {
  /// Sends a GET request
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) print('GET: $url');

    dynamic responseJson;
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: 20));

      responseJson = returnResponse(response);
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }

    if (kDebugMode) print(responseJson);
    return responseJson;
  }

  /// Sends a POST request
  @override
  Future<dynamic> postApi(String url, dynamic data) async {
    if (kDebugMode) {
      print('POST: $url');
      print('Body: $data');
    }

    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: data,
            headers: {'x-api-key': 'reqres-free-v1'},
          )
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }

    if (kDebugMode) print(responseJson);
    return responseJson;
  }

  /// Sends a PUT request
     @override
  Future<dynamic> putApi(String url, dynamic data) async {
    if (kDebugMode) {
      print('PUT: $url');
      print('Body: $data');
    }

    dynamic responseJson;
    try {
      final response = await http
          .put(
            Uri.parse(url),
            body: jsonEncode(data),
            headers: {
              'Content-Type': 'application/json',
              'x-api-key': 'reqres-free-v1',
            },
          )
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }

    if (kDebugMode) print(responseJson);
    return responseJson;
  }

  /// Sends a DELETE request
       @override

  Future<dynamic> deleteApi(String url) async {
    if (kDebugMode) print('DELETE: $url');

    dynamic responseJson;
    try {
      final response = await http
          .delete(
            Uri.parse(url),
            headers: {'x-api-key': 'reqres-free-v1'},
          )
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }

    if (kDebugMode) print(responseJson);
    return responseJson;
  }

  /// Parses API response
  dynamic returnResponse(http.Response response) {
    if (kDebugMode) print('Status Code: ${response.statusCode}');

    switch (response.statusCode) {
      case 200:
      case 201:
        return jsonDecode(response.body);
      case 400:
        return jsonDecode(response.body);
      case 401:
        throw UnauthorisedException('Unauthorized request');
      case 403:
        throw UnauthorisedException('Forbidden request');
      case 404:
        throw BadRequestException('URL not found');
      case 500:
        throw FetchDataException('Internal Server Error');
      default:
        throw FetchDataException(
          'Error occurred while communicating with server (StatusCode: ${response.statusCode})',
        );
    }
  }
}
