// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_getx_exemplo/tips_tricks_get.dart';
//import 'package:get/get.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

/*
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
*/

/*
////////// rotas nomeadas
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Tela1()),
        GetPage(name: '/Tela2', page: () => const Tela2()),
      ],
      home: const Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('Tela2'); // rotas nomeadas
            /*
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Tela2();
            }));*/
          },
          child: const Text('Ir pra tela 2'),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back(); // voltar para a tela ROTA NAO NOMEADA
            // Navigator.pop(context);
          },
          child: const Text('Ir pra tela 1'),
        ),
      ),
    );
  }
}
*/


/*
///// rotas nao nomeadas
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // usada apenas na primeira chamada do projeto
      home: Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /* Get.to(const Tela2()); // ir para a tela NAO NOMEADA
            Get.to(() => const Tela2());*/

            Get.to(
              () => const Tela2(),
              arguments: 'parametro tela 1',
            ); // passando parametros, pode ser passado como lista

            /*
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Tela2();
            }));*/
          },
          child: const Text('Ir pra tela 2'),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back(); // voltar para a tela ROTA NAO NOMEADA
            // Navigator.pop(context);
          },
          child: const Text('Ir pra tela 1'),
        ),
      ),
    );
  }
}
*/

/*class Controller extends GetxController {
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
*/