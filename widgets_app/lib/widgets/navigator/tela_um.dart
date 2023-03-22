import 'package:flutter/material.dart';
import 'package:widgets_app/widgets/navigator/tela_dois.dart';

class TelaUm extends StatefulWidget {
  const TelaUm({super.key});

  @override
  State<TelaUm> createState() => _TelaUmState();
}

class _TelaUmState extends State<TelaUm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tela Um'),
        ),
        body: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text('Tela um'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TelaDois()));
                      },
                      child: const Text('Tela dois'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/tela_dois');
                      },
                      child: const Text('Tela dois nomeada'),
                    ),
                  )
                ],
              ),
            )));
  }
}
