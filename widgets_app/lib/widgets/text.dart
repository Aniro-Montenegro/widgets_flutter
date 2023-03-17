import 'package:flutter/material.dart';

class ExampleText extends StatelessWidget {
  const ExampleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              '''
E nós conhecemos, e cremos no amor que Deus nos tem. Deus é amor; e quem está em amor está em Deus, e Deus nele.1 João 4:16''',
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey,
                height: 1.5,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
              textDirection: TextDirection.ltr,
            ),
            Text(
              '''
Há muito que o Senhor me apareceu, dizendo: Porquanto com amor eterno te amei, por isso com benignidade te atraí.Jeremias 31:3''',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                height: 1.2,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
              selectionColor: Colors.red,
              textAlign: TextAlign.center,
            ),
            Text(
              '''
Concluímos, pois, que o homem é justificado pela fé, independentemente das obras da lei.Romanos 3:28''',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
              selectionColor: Colors.red,
              textAlign: TextAlign.justify,
              strutStyle: StrutStyle(
                forceStrutHeight: true,
                height: 1.2,
                leading: 0.8,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '''
Ora, nós que somos fortes devemos suportar as debilidades dos fracos e não agradar-nos a nós mesmos.Romanos 15:1''',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                  decoration: TextDecoration.underline),
              softWrap: true,
              textAlign: TextAlign.justify,
              strutStyle: StrutStyle(
                forceStrutHeight: true,
                height: 1.2,
                leading: 0.8,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
          ]),
    );
  }
}
