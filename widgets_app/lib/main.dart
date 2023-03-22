import 'package:flutter/material.dart';
import 'package:widgets_app/widgets/home_page.dart';
import 'package:widgets_app/widgets/navigator/tela_dois.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Widgets App'),
      routes: {
        '/tela_dois': (context) => const TelaDois(),
      },
    );
  }
}
