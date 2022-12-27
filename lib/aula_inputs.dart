import 'package:flutter/material.dart';

class AulaInputs extends StatefulWidget {
  const AulaInputs({Key? key}) : super(key: key);

  @override
  State<AulaInputs> createState() => _AulaInputsState();
}

class _AulaInputsState extends State<AulaInputs> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de entrada'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Exemplos de checkboxs basicos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Text('Checkbox Inativo'),
            Checkbox(
              value: isSelect,
              onChanged: (value) {
                setState(() {
                  isSelect = value!;
                });
              },
            ),
            const Text('Checkbox Dinamico'),
            Checkbox(
              value: true,
              onChanged: (value) {},
            ),
            const Text('Checkbox Ativo'),
            const Divider(
              height: 30,
              thickness: 2,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            const Text(
              'Exemplos de checkboxs com tema',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            CheckboxListTile(
              value: true,
              onChanged: (value) {},
              title: const Text('Checkbox com titulo'),
            ),
          ],
        ),
      ),
    );
  }
}
