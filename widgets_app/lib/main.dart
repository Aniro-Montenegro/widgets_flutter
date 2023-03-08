import 'package:flutter/material.dart';
import 'package:widgets_app/widgets/container.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 4.0,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              mainAxisExtent: 200.0,
            ),
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExampleContainer()),
                      );
                    },
                    child: const Card(
                        color: Colors.teal,
                        child: Center(
                          child: Text(
                            'Container',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        )
                        // This trailing comma makes auto-formatting nicer for build methods.
                        ),
                  )),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                    color: Colors.teal,
                    child: Center(
                      child: Text(
                        'Card 2',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )
                    // This trailing comma makes auto-formatting nicer for build methods.
                    ),
              )
            ]));
  }
}
