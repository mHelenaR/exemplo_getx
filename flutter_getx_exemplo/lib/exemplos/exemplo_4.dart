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
  // acessando os dados pela variavel
  final controller = Get.put(Controller());

  MyApp({super.key});

  // pode usar o find ou  o _.
  //Get.find<Controller>() sempre defina o tipo do find

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetBuilder<Controller>(
        init: Controller(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text(Get.find<Controller>().titulo),
            ),
            body: Center(
              child: Text('Valor: ${controller.valor}'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                _.increment();
              },
            ),
          );
        },
      ),
    );
  }
}
