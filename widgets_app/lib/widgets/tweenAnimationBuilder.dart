import 'package:flutter/material.dart';

class TweenAnimationPage extends StatefulWidget {
  const TweenAnimationPage({super.key});

  @override
  State<TweenAnimationPage> createState() => _TweenAnimationPageState();
}

class _TweenAnimationPageState extends State<TweenAnimationPage> {
  double targetValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Center(
          child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: targetValue),
        builder: (BuildContext context, double size, Widget? child) {
          return IconButton(
            iconSize: size,
            onPressed: () {
              setState(() {
                targetValue = targetValue == 100 ? 250 : 100;
              });
            },
            icon: Icon(Icons.macro_off),
            color: Colors.teal,
          );
        },
        duration: const Duration(milliseconds: 500),
      )),
    );
  }
}
