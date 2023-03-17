import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 200,
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 200,
                child: Image.asset(
                  'assets/imagens/campo1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: SizedBox(
                width: 200,
                child: Image(
                  image: NetworkImage('https://picsum.photos/250?image=9'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: SizedBox(
                width: 200,
                child: Image(
                  image: AssetImage('assets/imagens/campo2.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: SizedBox(
                width: 200,
                child: Image(
                  image: AssetImage('assets/imagens/campo3.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: SizedBox(
                width: 200,
                child: Image(
                  image: AssetImage('assets/imagens/campo4.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: SizedBox(
                width: 200,
                child: Image(
                  image: AssetImage('assets/imagens/holanda.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: SizedBox(
                width: 200,
                child: Image(
                  image: AssetImage('assets/imagens/noruega.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
