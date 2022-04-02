// ignore: file_names, avoid_web_libraries_in_flutter

import 'ficha.dart' show FichaInscricao;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            )
          ],
          title: const Text(
            'SLPcamp',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home_filled),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.sports_esports),
                text: "Torneios",
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 30, 62, 88),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: [
                caixa(
                    "Campeonato de futsal sub 15", "15/02/2021 a 25/02/2021 ", context),
                caixa(
                    "Campeonato de futsal sub 19", "15/02/2021 a 25/02/2021 ", context),
                    const Divider(),
                botao(1)
              ],
            ),
            const Center(
              child: Text("It's rainy here"),
            ),
          ],
        ),
      ),
    );
  }

  caixa(String text, String text2,  BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.album),
              title: Text(text),
              subtitle: Text(text2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Cadastrar'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FichaInscricao(),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }

  botao(int user) {
    if (user == 1) {
      return FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 30, 62, 88),
        child: const Icon(Icons.add),
        onPressed: () {},
      );
    }
  }
}
