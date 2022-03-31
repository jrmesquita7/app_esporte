// ignore_for_file: deprecated_member_use


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage
({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: const Icon(Icons.search),
          onPressed: (){},),
          IconButton(icon: const Icon(Icons.more_vert),
          onPressed: (){},)
        ],
        title: const Text('Camp SLP',
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
              children:[
                ElevatedButton( 
                child: const Text('Home'),
                onPressed: (){},),
                ElevatedButton( 
                child: const Text('Notícias'),
                onPressed: (){},),
                ElevatedButton( 
                child: const Text('Torneios'),
                onPressed: (){},),
                ElevatedButton( 
                child: const Text('Inscrição'),
                onPressed: (){},)
              ],
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.only(top: 20, left: 10),
          //   child: const Text(
          //     'Campeonatos em andamento:',
          //     style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.bold
          //     ),
          //   ),
          // ),
  
        ],
      ),
      
    );
  }

 caixa(String text){
   return Container(
     padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
     color: const Color.fromARGB(255, 159, 177, 207), 
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text(text,
         style: const TextStyle(
           fontSize: 15,
           fontWeight: FontWeight.bold

         ),
         ),
         TextButton(
         child: const Text('Inscrever Time'),
         onPressed: (){},
       ),
       ],
     )
   );


 }
}