import 'package:flutter/material.dart';
import 'package:widgets_app/data/data_inherited.dart';

class TelaDois extends StatefulWidget {
  final BuildContext telaDoisContext;
  const TelaDois({super.key, required this.telaDoisContext});

  @override
  State<TelaDois> createState() => _TelaDoisState();
}

class _TelaDoisState extends State<TelaDois> {
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tela Dois'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 30),
              child: Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text('Tela Dois'),
                  )),
            ),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  DadosInherited.of(widget.telaDoisContext)!
                      .newName(_textController.text);

                  setState(() {
                    _textController.clear();

                    Navigator.of(context).pop();
                  });
                },
                child: const Text('Salvar'))
          ],
        ));
  }
}
