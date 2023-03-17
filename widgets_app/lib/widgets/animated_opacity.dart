import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedOpacity'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Slider(
                  onChanged: (value) {
                    setState(() {
                      opacity = value;
                    });
                  },
                  value: opacity),
            )),
            AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 3),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 1),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(microseconds: 680),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
