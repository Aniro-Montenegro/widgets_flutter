import 'package:flutter/material.dart';

enum ButtonState { init, loading, done }

class ExampleButton extends StatefulWidget {
  const ExampleButton({super.key});

  @override
  State<ExampleButton> createState() => _ExampleButtonState();
}

class _ExampleButtonState extends State<ExampleButton> {
  bool isLoading = false;

  bool isAnimating = true;
  ButtonState buttonState = ButtonState.init;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    bool isDone = buttonState == ButtonState.done;
    bool isStretched = isAnimating || buttonState == ButtonState.init;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFFC4E1F2)),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFFC2A0F2)),
                  elevation: MaterialStateProperty.all(10),
                  maximumSize: MaterialStateProperty.all(const Size(300, 50)),
                  minimumSize: MaterialStateProperty.all(const Size(250, 50)),
                  animationDuration: const Duration(seconds: 2),
                  shadowColor: MaterialStateProperty.all(Colors.red[500]),
                  overlayColor: MaterialStateProperty.all(Colors.green[500]),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.person,
                  semanticLabel: 'Label',
                  color: Colors.yellow,
                  fill: 0.1,
                  grade: 0.1,
                  size: 35,
                  weight: 1,
                ),
                label: const Text('ElevatedButton.icon'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                  onPressed: () async {
                    if (!isLoading) {
                      setState(() {
                        isLoading = true;
                        Future.delayed(const Duration(seconds: 5))
                            .then((value) {
                          setState(() {
                            isLoading = false;
                          });
                        });
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF03A63C),
                    minimumSize: const Size(250, 50),
                    maximumSize: const Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: isLoading
                      ? Row(
                          children: const [
                            CircularProgressIndicator(
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text('Loading...')
                          ],
                        )
                      : const Text('ElevatedButton')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 1500),
              width: buttonState == ButtonState.init ? width : 70,
              onEnd: () => setState(() => isAnimating = !isAnimating),
              curve: Curves.easeIn,
              child: Center(
                child: isStretched ? buildButton() : builSmallButton(isDone),
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget buildButton() {
    return OutlinedButton(
      onPressed: () async {
        setState(() => buttonState = ButtonState.loading);

        await Future.delayed(const Duration(seconds: 5));
        setState(() => buttonState = ButtonState.done);
        await Future.delayed(const Duration(seconds: 5));
        setState(() => buttonState = ButtonState.init);
      },
      style: OutlinedButton.styleFrom(
        elevation: 10,
        padding: const EdgeInsets.all(15),
        backgroundColor: Colors.amber,
        minimumSize: const Size(250, 50),
        maximumSize: const Size(300, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const FittedBox(child: Text('OutlinedButton')),
    );
  }

  Widget builSmallButton(bool isDoneValue) {
    final color = isDoneValue ? Colors.green : Colors.indigo;
    return Container(
        height: 70,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: Center(
            child: isDoneValue
                ? const Icon(
                    Icons.done,
                    color: Colors.white,
                  )
                : const CircularProgressIndicator(
                    color: Colors.white,
                  )));
  }
}
