import 'package:flutter/material.dart';
import 'package:widgets_app/widgets/button.dart';
import 'package:widgets_app/widgets/column_row.dart';
import 'package:widgets_app/widgets/container.dart';
import 'package:widgets_app/widgets/images.dart';
import 'package:widgets_app/widgets/linear_progress_indicator.dart';
import 'package:widgets_app/widgets/list_view_stateless.dart';
import 'package:widgets_app/widgets/stack.dart';
import 'package:widgets_app/widgets/text.dart';

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
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
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
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExampleStack()),
                    );
                  },
                  child: const Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          'Stack',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      )
                      // This trailing comma makes auto-formatting nicer for build methods.
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExampleColumnRow()),
                    );
                  },
                  child: const Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          'Column/Row',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      )
                      // This trailing comma makes auto-formatting nicer for build methods.
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExampleText()),
                    );
                  },
                  child: const Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          'Text',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      )
                      // This trailing comma makes auto-formatting nicer for build methods.
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExampleButton()),
                    );
                  },
                  child: const Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          'Buttons',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      )
                      // This trailing comma makes auto-formatting nicer for build methods.
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ListViewStatelessExample()),
                    );
                  },
                  child: const Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          'List View',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      )
                      // This trailing comma makes auto-formatting nicer for build methods.
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LinearProgressIndicatorExample()),
                    );
                  },
                  child: const Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      color: Colors.teal,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Linear Progress Indicator',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )
                      // This trailing comma makes auto-formatting nicer for build methods.
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageExample()),
                    );
                  },
                  child: const Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      color: Colors.teal,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Imagens',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )
                      // This trailing comma makes auto-formatting nicer for build methods.
                      ),
                ),
              )
            ]));
  }
}
