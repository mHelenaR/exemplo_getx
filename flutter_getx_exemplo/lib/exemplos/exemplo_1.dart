// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  //instanciar a classe
  static Controller get to => Get.find();

  String titulo = 'Exemplo com GetX';
  int valor = 0;

  void increment() {
    valor++;
    update();
  }
}

class MyApp extends StatelessWidget {
  var numero = 0.obs;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('teste'),
        ),
        body: Center(
          child: Obx(
            () => Text('Valor: $numero'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numero++;
          },
        ),
      ),
    );
  }
}
