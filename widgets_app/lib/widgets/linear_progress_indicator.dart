import 'package:flutter/material.dart';
import 'package:widgets_app/utils/cores.dart';

class LinearProgressIndicatorExample extends StatefulWidget {
  const LinearProgressIndicatorExample({super.key});

  @override
  State<LinearProgressIndicatorExample> createState() =>
      _LinearProgressIndicatorExampleState();
}

class _LinearProgressIndicatorExampleState
    extends State<LinearProgressIndicatorExample> {
  int nivel = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Progress Indicator Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              child: LinearProgressIndicator(
                value: nivel / 10,
                backgroundColor: ExampleCores().buttonYellow,
                valueColor:
                    AlwaysStoppedAnimation<Color>(ExampleCores().buttonBlue),
                minHeight: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (nivel <= 10) {
                      nivel = nivel + 1;
                    }
                  });
                },
                child: const Text('Aumentar'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (nivel >= 0) {
                      nivel = nivel - 1;
                    }
                  });
                },
                child: const Text('Diminuir'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
