// ignore_for_file: deprecated_member_use


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage
({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
int user = 0;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: const Icon(Icons.search),
          onPressed: (){},),
          IconButton(icon: const Icon(Icons.account_circle),
          onPressed: (){},)
        ],
        centerTitle: true,
        title: const Text('SLPcamp',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: const Color.fromARGB(255, 30, 62, 88),
      ),
      body: ListView(
        children: [
          Container(
            height: 80,
            width: 80,
            color: const Color.fromARGB(255, 30, 62, 88),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:const [
                Text("Campeonatos em andamento",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
          caixa('Campeonato de Futsal sub 19','14/09/14'),
          caixa('Campeonato de Vôlei ','14/09/14')
          
        ],
      ),
    floatingActionButton: botao(1)
    );
  }

 caixa(String text, String text2){
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
              ListTile(
              leading: Icon(Icons.album),
              title: Text(text),
              subtitle: Text(text2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Inscrever-se'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );

 }

 botao(int user){
   if (user == 1){
     return FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){},
        );
   }
 }
}