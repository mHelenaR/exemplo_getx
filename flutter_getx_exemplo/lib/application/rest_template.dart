// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:get/get.dart';

class RestTemplate extends GetConnect {
  final String name;
  static const String NO_AUTH_TAG = 'NO_AUTH_TAG';
  static const String AUTH_TAG = 'AUTH_TAG';

  RestTemplate() : name = 'Autenticação';

  RestTemplate.auth() : name = 'Autenticação' {
    httpClient.addRequestModifier<dynamic>((request) {
      request.headers['Authorization'] = 'TokenX';
      return request;
    });
  }
}
