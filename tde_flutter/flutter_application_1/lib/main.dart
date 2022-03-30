// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {

  int numeroDisplay = 0;
  var display = '';
  var result = '';
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50, right: 10),
              height: 100,
              child: Text(
                display.toString(),
                style: const TextStyle(fontSize: 30),
                textAlign: TextAlign.right,
              ),
              color: const Color.fromARGB(52, 75, 64, 64),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                botao('7', numero: 7, color: Colors.black38),
                botao('8', numero: 8, color: Colors.black38),
                botao('9', numero: 9, color: Colors.black38),
                botao('/', color: Colors.black38),
                botao('C', color: Colors.black)
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                botao('4', numero: 4, color: Colors.black38),
                botao('5', numero: 5, color: Colors.black38),
                botao('6', numero: 6, color: Colors.black38),
                botao('x', color: Colors.black38),
                botao('½', color: Colors.black38)
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                botao('1', numero: 1, color: Colors.black38),
                botao('2', numero: 2, color: Colors.black38),
                botao('3', numero: 3, color: Colors.black38),
                botao('-', color: Colors.black38),
                botao('√', color: Colors.black38)
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                botao('0', numero: 0, color: Colors.black38),
                botao(',', color: Colors.black38),
                botao('%', color: Colors.black38),
                botao('+', color: Colors.black38),
                botao('=', color: Colors.green)
              ],
            ),
          ],
        ),
      ),
    );
  }

  botao(String text, {int? numero, Color color = Colors.grey}) {
    return GestureDetector(
      child: Container(
          width: 50,
          height: 50,
          color: color,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
          )),
      onTap: () {
        setState(() {
            if (numero != null){
              display += numero.toString();
            }
            
            else if (text == 'C'){
              setState(() {
                display = '';
              });
            }
            else if (text == '+' || text == 'x' || text == '-' || text == '/' || text == '√' ){
              setState(() {
                display += text.toString();
              });
            }
            else if (text == '='){
              estateResult();
              setState(() {
                display = result.toString();
              });
            }
          
        });
      },
    );
  }

  void estateResult() {
    String finaluserinput = display;
    finaluserinput = display.replaceAll('x', "*");
 
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    result = eval.toString();
  }
}
