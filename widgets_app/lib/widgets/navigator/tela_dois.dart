import 'package:flutter/material.dart';

class TelaDois extends StatefulWidget {
  const TelaDois({super.key});

  @override
  State<TelaDois> createState() => _TelaDoisState();
}

class _TelaDoisState extends State<TelaDois> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tela Dois'),
        ),
        body: Container(
            color: Colors.white,
            child: const Center(
              child: Text('Tela Dois'),
            )));
  }
}
