import 'package:flutter_getx_exemplo/application/rest_template.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RestTemplate(), tag: RestTemplate.NO_AUTH_TAG);
    Get.put(RestTemplate.auth(), tag: RestTemplate.AUTH_TAG);
  }
}
