import 'package:flutter/material.dart';

class ScaffoldMesengerPage extends StatefulWidget {
  const ScaffoldMesengerPage({super.key});

  @override
  State<ScaffoldMesengerPage> createState() => _ScaffoldMesengerPageState();
}

class _ScaffoldMesengerPageState extends State<ScaffoldMesengerPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Messenger'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Snack Bar'),
                      duration: Duration(seconds: 5),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xFFC4E1F2)),
                  elevation: MaterialStateProperty.all(10),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(15),
                  ),
                  maximumSize: MaterialStateProperty.all(const Size(300, 50)),
                  minimumSize: MaterialStateProperty.all(const Size(250, 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'Snack Bar',
                  style: TextStyle(color: Color(0xFFD99543)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showMaterialBanner(
                    MaterialBanner(
                      content: Text(
                        'Banner',
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Agree',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                      backgroundColor: Colors.black,
                      leading: Icon(
                        Icons.balance,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xFFC4E1F2)),
                  elevation: MaterialStateProperty.all(10),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(15),
                  ),
                  maximumSize: MaterialStateProperty.all(const Size(300, 50)),
                  minimumSize: MaterialStateProperty.all(const Size(250, 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'ElevatedButton',
                  style: TextStyle(color: Color(0xFFD99543)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
