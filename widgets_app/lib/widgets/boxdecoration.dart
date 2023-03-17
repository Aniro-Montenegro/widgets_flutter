import 'package:flutter/material.dart';

class BosDecorationExample extends StatefulWidget {
  const BosDecorationExample({super.key});

  @override
  State<BosDecorationExample> createState() => _BosDecorationExampleState();
}

class _BosDecorationExampleState extends State<BosDecorationExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BoxDecoration'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.teal,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    border: Border(
                      top: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                      left: BorderSide(
                        color: Colors.pink,
                        width: 2,
                      ),
                      right: BorderSide(
                        color: Colors.lime,
                        width: 2,
                      ),
                      bottom: BorderSide(
                        color: Colors.cyan,
                        width: 1,
                      ),
                    ),
                    backgroundBlendMode: BlendMode.srcOver,

                    // ignore: prefer_const_literals_to_create_immutables
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.rectangle,
                    border: Border(
                      top: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                      left: BorderSide(
                        color: Colors.pink,
                        width: 2,
                      ),
                      right: BorderSide(
                        color: Colors.lime,
                        width: 2,
                      ),
                      bottom: BorderSide(
                        color: Colors.cyan,
                        width: 1,
                      ),
                    ),
                    backgroundBlendMode: BlendMode.srcOver,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.teal,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.yellow,
                        Colors.green,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                    image: DecorationImage(
                        image: AssetImage('assets/imagens/campo3.jpeg'),
                        fit: BoxFit.fill),
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                      vertical: BorderSide(
                        color: Colors.pink,
                        width: 2,
                      ),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.yellow,
                        Colors.green,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.merge(
                          const Border(
                            top: BorderSide(
                              color: Colors.teal,
                              width: 3,
                            ),
                            left: BorderSide(
                              color: Colors.pink,
                              width: 2,
                            ),
                            right: BorderSide(
                              color: Colors.lime,
                              width: 2,
                            ),
                            bottom: BorderSide(
                              color: Colors.cyan,
                              width: 1,
                            ),
                          ),
                          const Border(
                            top: BorderSide(
                              color: Colors.teal,
                              width: 3,
                            ),
                            left: BorderSide(
                              color: Colors.pink,
                              width: 2,
                            ),
                            right: BorderSide(
                              color: Colors.lime,
                              width: 2,
                            ),
                            bottom: BorderSide(
                              color: Colors.cyan,
                              width: 1,
                            ),
                          ),
                        ))),
              ),
            ],
          ),
        ));
  }
}
