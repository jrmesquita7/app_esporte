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
          Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome completo',
            ),
          )),
          const Divider(),
          Row(
            children: [
              Expanded(
                child: Form(
                    child: TextFormField(
                  style: const TextStyle(fontSize: 15),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nascimento',
                  ),
                )),
              ),
              Radio(
                  value: 1,
                  groupValue: value1,
                  onChanged: (value) {
                    setState(() {
                      value1 = value.hashCode;
                    });
                  }),
              const Text("Masculino"),
              Radio(
                  value: 2,
                  groupValue: value1,
                  onChanged: (value) {
                    setState(() {
                      value1 = value.hashCode;
                    });
                  }),
              const Text("Femenino"),
            ],
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                child: Form(
                    child: TextFormField(
                  style: const TextStyle(fontSize: 15),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Peso',
                  ),
                )),
              ),
              Expanded(
                child: Form(
                    child: TextFormField(
                  style: const TextStyle(fontSize: 15),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Altura',
                  ),
                )),
              )
            ],
          ),
          const Divider(),
          Row(
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
          ),
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
          Row(
            children: [
              const Text("Remédio controlado:",
              style: TextStyle(fontSize: 15)),
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
              const Text("Não")
            ],
          ),
          const Divider(),
          Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Pai',
            ),
          )),
          const Divider(),
          Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Mãe',
            ),
          )),
          const Divider(),
          Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Rua',
            ),
          )),
          const Divider(),
          Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Bairro',
            ),
          )),
          const Divider(),
          Row(
            children: [
              Expanded(
            child: Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Município',
            ),
          )),),
          Expanded(
            child: Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'UF',
            ),
          )),)
            ],
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
            child: Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Telefone',
            ),
          )),),
          Expanded(
            child: Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'CEP',
            ),
          )),)
            ],
          ),
          const Divider(),
          Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Escola',
            ),
          )),
          const Divider(),
          Row(
            children: [
              Expanded(
            child: Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Turno',
            ),
          )),),
          Expanded(
            child: Form(
              child: TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Ano',
            ),
          )),)
            ],
          ),
        ],
      ),
    );
  }
}
