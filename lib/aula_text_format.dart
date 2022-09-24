import 'package:flutter/material.dart';

class FormatacaoTexto extends StatelessWidget {
  const FormatacaoTexto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formatação de texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Texto comum'),
            SizedBox(height: 10),
            Text(
              'Texto em negrito',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Texto em itálico',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Texto com espaçamento entre letras',
              style: TextStyle(letterSpacing: 3),
            ),
            Text(
              'Texto com decorações',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
