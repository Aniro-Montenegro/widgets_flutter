import 'package:flutter/material.dart';
import 'package:widgets_app/utils/cores.dart';

class StarExample extends StatefulWidget {
  const StarExample({super.key});

  @override
  State<StarExample> createState() => _StarExampleState();
}

class _StarExampleState extends State<StarExample> {
  int dificuldade = 0;
  List<Widget> estrelas = [];
  @override
  void initState() {
    super.initState();
    setStarts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Star'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: estrelas),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        if (dificuldade >= 0) {
                          dificuldade--;
                          setStarts();
                        }
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.red,
                        size: 30,
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  IconButton(
                      onPressed: () {
                        if (dificuldade <= 5) {
                          dificuldade++;
                          setStarts();
                        }
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: 30,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  setStarts() {
    estrelas = [];
    for (int i = 0; i < 5; i++) {
      setState(() {
        if (i < dificuldade) {
          estrelas.add(Icon(
            Icons.star_border,
            color: ExampleCores().buttonYellow,
            size: 30,
          ));
        } else {
          estrelas.add(const Icon(
            Icons.star_border,
            color: Colors.grey,
            size: 30,
          ));
        }
      });
    }
  }
}
