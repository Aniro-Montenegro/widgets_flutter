import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ExampleStack extends StatefulWidget {
  const ExampleStack({super.key});

  @override
  State<ExampleStack> createState() => _ExampleStackState();
}

class _ExampleStackState extends State<ExampleStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Container(
        color: Colors.black12,
        child: Stack(children: [
          Positioned(
            top: 250,
            left: 75,
            child: Container(
              color: Colors.red,
              height: 200,
              width: 200,
              child: const Placeholder(
                child: Text(
                  'Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: 63,
            left: 200,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: const Placeholder(
                child: Text(
                  'Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 230,
            top: 350,
            child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: ListView(
                  children: [
                    Text('Container'),
                    Text('Container'),
                    Text('Container'),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
