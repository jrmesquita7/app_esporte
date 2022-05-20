import 'package:flutter/material.dart';

class FichaInscricao extends StatefulWidget {
  const FichaInscricao({Key? key}) : super(key: key);

  @override
  State<FichaInscricao> createState() => _FichaInscricaoState();
}

class _FichaInscricaoState extends State<FichaInscricao> {
  int value1 = 1;
  int value2 = 1;
  int value3 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Ficha de Inscrição",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 30, 62, 88),
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          formulario("Nome Completo"),
          formulario2(formulario("Nascimento"), "Masculino", "Femenino"),
          Row(
            children: [
              Expanded(
                child: formulario("Peso"),
              ),
              Expanded(
                child: formulario("Altura"),
              )
            ],
          ),
          Padding(padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
          child: Row(
            children: [
              const Text(
                "PdD:",
                style: TextStyle(fontSize: 15),
              ),
              Radio(
                  value: 1,
                  groupValue: value2,
                  onChanged: (value) {
                    setState(() {
                      value2 = value.hashCode;
                    });
                  }),
              const Text("Não"),
              Radio(
                  value: 2,
                  groupValue: value2,
                  onChanged: (value) {
                    setState(() {
                      value2 = value.hashCode;
                    });
                  }),
              const Text("Auditiva"),
              Radio(
                  value: 3,
                  groupValue: value2,
                  onChanged: (value) {
                    setState(() {
                      value2 = value.hashCode;
                    });
                  }),
              const Text("Física")
            ],
          ),),
          Row(
            children: [
              Radio(
                  value: 4,
                  groupValue: value2,
                  onChanged: (value) {
                    setState(() {
                      value2 = value.hashCode;
                    });
                  }),
              const Text("Mental"),
              Radio(
                  value: 5,
                  groupValue: value2,
                  onChanged: (value) {
                    setState(() {
                      value2 = value.hashCode;
                    });
                  }),
              const Text("Ocular"),
              Radio(
                  value: 6,
                  groupValue: value2,
                  onChanged: (value) {
                    setState(() {
                      value2 = value.hashCode;
                    });
                  }),
              const Text("Motora")
            ],
          ),
          const Divider(),
          Padding(padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
          child: Row(
            children: [
              const Text("Remédio controlado:", style: TextStyle(fontSize: 15)),
              Radio(
                  value: 1,
                  groupValue: value3,
                  onChanged: (value) {
                    setState(() {
                      value3 = value.hashCode;
                    });
                  }),
              const Text("Sim"),
              Radio(
                  value: 2,
                  groupValue: value3,
                  onChanged: (value) {
                    setState(() {
                      value3 = value.hashCode;
                    });
                  }),
              const Text("Não"),
              const Divider()
            ],
          ),),
          formulario("Pai"),
          formulario("Mãe"),
          formulario("Rua"),
          formulario("Bairro"),
          formulario("Título"),
          Row(
            children: [
              Expanded(
                child: formulario("Município"),
              ),
              Expanded(
                child: formulario("UF"),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: formulario("Telefone"),
              ),
              Expanded(
                child: formulario("CEP"),
              )
            ],
          ),
          formulario("Escola"),
          Row(
            children: [
              Expanded(
                child: formulario("Turno"),
              ),
              Expanded(
                child: formulario("Ano"),
              )
            ],
          ),
          formulario("Campeonato"),
          formulario("Nome do Time")
        ],
      ),
    );
  }

  formulario3(Widget formu){

  }

  formulario2(Widget formu, String text, String text2, {int? valor}) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: formu,
            ),
            Radio(
                value: 1,
                groupValue: value1,
                onChanged: (value) {
                  setState(() {
                    value1 = value.hashCode;
                  });
                }),
            Text(text.toString()),
            Radio(
                value: 2,
                groupValue: value1,
                onChanged: (value) {
                  setState(() {
                    value1 = value.hashCode;
                  });
                }),
            Text(text2.toString()),
          ],
        ));
  }

  formulario(String text) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
        child: Form(
            child: TextFormField(
          style: const TextStyle(fontSize: 15),
          decoration: InputDecoration(
              border: const OutlineInputBorder(), labelText: text),
        )));
  }
}
