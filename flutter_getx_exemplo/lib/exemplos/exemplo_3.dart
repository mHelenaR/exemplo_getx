import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
