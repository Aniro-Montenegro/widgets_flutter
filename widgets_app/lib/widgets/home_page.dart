import 'package:flutter/material.dart';
import 'package:widgets_app/widgets/animated_opacity.dart';
import 'package:widgets_app/widgets/boxdecoration.dart';
import 'package:widgets_app/widgets/button.dart';
import 'package:widgets_app/widgets/column_row.dart';
import 'package:widgets_app/widgets/container.dart';
import 'package:widgets_app/widgets/images.dart';
import 'package:widgets_app/widgets/linear_progress_indicator.dart';
import 'package:widgets_app/widgets/list_view_stateless.dart';
import 'package:widgets_app/widgets/stack.dart';
import 'package:widgets_app/widgets/start_classification.dart';
import 'package:widgets_app/widgets/text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, Widget> widgets = {
    'Text': const ExampleText(),
    'Button': const ExampleButton(),
    'Image': const ImageExample(),
    'Container': const ExampleContainer(),
    'Column/Row': const ExampleColumnRow(),
    'Stack': const ExampleStack(),
    'ListView': const ListViewStatelessExample(),
    'LinearProgressIndicator': const LinearProgressIndicatorExample(),
    'Box Decoration': const BosDecorationExample(),
    'Animated Opacity': const AnimatedOpacityExample(),
    'Star': const StarExample(),
  };

  List<Widget> listWidgets = [];
  @override
  void initState() {
    super.initState();
    widgets.forEach((key, value) {
      listWidgets.add(createCard(key, value));
    });
    setState(() {});
  }

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
            children: listWidgets));
  }

  Widget createCard(String titulo, Widget classe) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => classe),
          );
        },
        child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            color: Colors.teal,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  titulo,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
            // This trailing comma makes auto-formatting nicer for build methods.
            ),
      ),
    );
  }
}
