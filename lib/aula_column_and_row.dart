import 'package:flutter/material.dart';

class ColumnAndRow extends StatelessWidget {
  const ColumnAndRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coluna e Linha'),
      ),
      body: Column(
        children: [
          Column(
            children: const [
              Text('Texto em coluna 1'),
              Text('Texto em coluna 2'),
              Text('Texto em coluna 3'),
            ],
          ),
          Row(
            children: const [
              Text('Texto em linha 1'),
              Text('Texto em linha 2'),
              Text('Texto em linha 3'),
            ],
          ),
        ],
      ),
    );
  }
}
