import 'package:flutter/material.dart';

class ExampleContainer extends StatefulWidget {
  const ExampleContainer({super.key});

  @override
  State<ExampleContainer> createState() => _ExampleContainerState();
}

class _ExampleContainerState extends State<ExampleContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(
            child: Container(
              transform: Matrix4.rotationZ(0.1),
              color: Colors.red,
              height: 200,
              width: 150,
              child: const Placeholder(
                child: Text(
                  'Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            transform: Matrix4.rotationZ(-0.2),
            width: 200,
            height: 350,
            color: Colors.green,
            child: const Placeholder(
              child: Text(
                'Container',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
              width: 200,
              height: 350,
              color: Colors.blue,
              child: ListView(
                children: [
                  Text('Container'),
                  Text('Container'),
                  Text('Container'),
                ],
              )),
        ]),
      ),
    );
  }
}
