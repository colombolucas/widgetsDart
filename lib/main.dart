import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void abandonouEstabelecimento() {
    print("O cliente abandonou o estabelecimento!");
  }

  void entrouEstabelecimento() {
    print("O cliente entrou no estabelecimento!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 10),
                TextButton(
                    onPressed: abandonouEstabelecimento,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100)),
                    child: const Text("Linha 1 Botão 1",
                        style: TextStyle(color: Colors.black, fontSize: 18))),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: entrouEstabelecimento,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100)),
                  child: const Text(
                    "Linha 1 Botão 2",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 10),
                TextButton(
                    onPressed: abandonouEstabelecimento,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100)),
                    child: const Text("Linha 2 Botão 1",
                        style: TextStyle(color: Colors.black, fontSize: 18))),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: entrouEstabelecimento,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100)),
                  child: const Text(
                    "Linha 2 Botão 2",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: entrouEstabelecimento,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100)),
                  child: const Text(
                    "Linha 2 Botão 3",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 10),
                TextButton(
                  onPressed: entrouEstabelecimento,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100)),
                  child: const Text(
                    "Linha 3",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
