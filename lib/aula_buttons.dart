import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aula sobre botões'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            children: [
              const Text(
                'Buttons',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('Fui clickado');
                  },
                  child: const Text(
                    'Este é um botão elevado',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {
                    print('botão clickado');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                      ),
                      Text('Botão Textual'),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                  label: const Text('Apagar'),
                ),
              ),
            ],
          ),
          Divider(
            indent: MediaQuery.of(context).size.width * .080,
            endIndent: MediaQuery.of(context).size.width * .080,
            thickness: 3.0,
            color: Colors.black,
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              const Text(
                'Buttons deprecateds',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: FlatButton(
                  onPressed: () {},
                  child: const Text('Este é um Flatbutton'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: const Text(
                    'RaisedButton',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
