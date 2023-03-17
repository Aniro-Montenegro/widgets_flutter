import 'package:flutter/material.dart';

class ListViewStatelessExample extends StatefulWidget {
  const ListViewStatelessExample({super.key});

  @override
  State<ListViewStatelessExample> createState() =>
      _ListViewStatelessExampleState();
}

class _ListViewStatelessExampleState extends State<ListViewStatelessExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Stateless Example'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: CardExample(
                index: index,
              ),
            );
          },
          itemCount: 20,
        ));
  }
}

class CardExample extends StatelessWidget {
  final int index;
  const CardExample({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.album),
            title: Text("Indice: $index"),
            subtitle:
                const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
