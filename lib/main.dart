import 'package:flutter/material.dart';
import 'package:widgets_examples/aula_buttons.dart';
import 'package:widgets_examples/aula_column_and_row.dart';
import 'package:widgets_examples/aula_margin.dart';
import 'package:widgets_examples/aula_padding_e_alignment.dart';
import 'package:widgets_examples/aula_text_format.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        'Column': (context) => const ColumnAndRow(),
        'Text': ((context) => const FormatacaoTexto()),
        'Buttons': ((context) => const Buttons()),
        'Padding': ((context) => const PaddingExample()),
        'Margin': ((context) => const MarginExamples()),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curso Flutter Jamilton'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: const Text('Aula sobre Colunas e linhas'),
              onTap: () => Navigator.of(context).pushNamed('Column'),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Aula sobre formatação de textos'),
              onTap: () => Navigator.of(context).pushNamed('Text'),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Aula sobre botões'),
              onTap: () => Navigator.of(context).pushNamed('Buttons'),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Aula sobre espaços e alinhamentos'),
              onTap: () => Navigator.of(context).pushNamed('Padding'),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Aula sobre margens'),
              onTap: () => Navigator.of(context).pushNamed('Margin'),
            ),
          ),
        ],
      ),
    );
  }
}
