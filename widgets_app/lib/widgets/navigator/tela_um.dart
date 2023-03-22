import 'package:flutter/material.dart';
import 'package:widgets_app/data/data_inherited.dart';
import 'package:widgets_app/widgets/navigator/tela_dois.dart';

class TelaUm extends StatefulWidget {
  const TelaUm({super.key});

  @override
  State<TelaUm> createState() => _TelaUmState();
}

class _TelaUmState extends State<TelaUm> {
  List<String> dados = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tela Um'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: Text('Tela um'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: ElevatedButton(
                      onPressed: () async {
                        final value = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contextNew) => TelaDois(
                                      telaDoisContext: context,
                                    )));
                        setState(() {});
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
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: DadosInherited.of(context)!.dados.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(DadosInherited.of(context)!.dados[index]),
                      );
                    },
                  ),
                ],
              )),
        ));
  }
}
