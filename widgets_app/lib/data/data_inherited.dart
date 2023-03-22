import 'package:flutter/material.dart';

class DadosInherited extends InheritedWidget {
  DadosInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<String> dados = <String>[];

  void newName(String name) {
    dados.add(name);
  }

  static DadosInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DadosInherited>();
  }

  @override
  bool updateShouldNotify(DadosInherited oldWidget) {
    return oldWidget.dados != dados;
  }
}
