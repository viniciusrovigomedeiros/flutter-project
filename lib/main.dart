import 'package:flutter/material.dart';

void main() {
  // MaterialApp() -> responsável pelo funcionamento do app (navegação, cores de fundo etc.
  // um widget que ja vem com bastante coisas prontas

  runApp(MaterialApp(
    //Método que vai inflar nosso app (excecutar)
    home: HomePage(),

    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // StatelessWidget -> Widget que nao muda estado.
  String url =
      'https://cdn.pixabay.com/photo/2022/06/25/11/20/bee-7283312_960_720.jpg';
  String url2 =
      'https://cdn.pixabay.com/photo/2022/06/21/07/50/dogs-7275314_960_720.jpg';
  String url1 =
      'https://cdn.pixabay.com/photo/2022/06/25/11/20/bee-7283312_960_720.jpg';
  @override
  Widget build(BuildContext context) {
    // Scaffold -> Esqueleto do aplicativo. interessante ter 1 em cada page

    return Scaffold(
      appBar: AppBar(), //widget do proprio flutter para appbar
      body: Center(
        //widget para centralizar dentro do espaço disponível
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text("Olá, como você está?"),
            const Text("Estou bem e você?"),
            const SizedBox(
              height: 20,
            ),
            Image.network(url),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (url == url1) {
                    url = url2;
                  } else
                    url = url1;
                });
              },
              child: const Text('Trocar imagem'),
            ),
          ],
        ),
      ),
    );
  }
}