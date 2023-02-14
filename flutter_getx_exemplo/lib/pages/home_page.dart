import 'package:flutter/material.dart';
import 'package:flutter_getx_exemplo/application/rest_template.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final restTemplate = Get.find<RestTemplate>(tag: RestTemplate.AUTH_TAG);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restTemplate.name),
      ),
      body: Container(),
    );
  }
}
