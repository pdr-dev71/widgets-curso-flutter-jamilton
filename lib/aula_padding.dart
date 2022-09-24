import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  const PaddingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aula sobre padding'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'Space around example',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.telegram,
                      size: 80,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.whatsapp,
                      size: 80,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.facebook,
                      size: 80,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                const Text(
                  'SpaceEvenly example',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.add,
                      size: 80,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.delete,
                      size: 80,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.edit,
                      size: 80,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(3, 20, 3, 10),
            child: Column(
              children: [
                const Text(
                  'Space Bettween example',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.mic,
                      size: 80,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.pause,
                      size: 80,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.videocam,
                      size: 80,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Text(
                'Padding examples',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Padding all',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Padding only',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 22, 12, 22),
                      child: Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'Padding LTRB',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
