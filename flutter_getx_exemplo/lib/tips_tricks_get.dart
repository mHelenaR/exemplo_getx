import 'package:flutter/material.dart';
import 'package:flutter_getx_exemplo/application/application_bindings.dart';
import 'package:flutter_getx_exemplo/pages/home_page.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo GetX',
      initialBinding: ApplicationBindings(),
      getPages: [GetPage(name: '/', page: () => HomePage())],
    );
  }
}
