import 'package:flutter/material.dart';

class MarginExamples extends StatelessWidget {
  const MarginExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aula sobre margin'),
      ),
      body: Row(
        children: [
          Column(
            children: [
              const Text('Margin all'),
              Container(
                margin: const EdgeInsets.all(10),
                width: 180,
                height: 100,
                color: Colors.black,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: 90,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
              const Text('Margin only'),
              Container(
                margin: const EdgeInsets.only(top: 6, bottom: 10),
                width: 180,
                height: 100,
                color: Colors.black,
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  width: 90,
                  height: 50,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          Column(
            children: [
              const Text('Margin LTRB'),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                width: 180,
                height: 100,
                color: Colors.black,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  width: 90,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
              const Text('Margin Symmetric'),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                width: 180,
                height: 100,
                color: Colors.black,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 7),
                  width: 90,
                  height: 50,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
