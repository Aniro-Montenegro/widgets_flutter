import 'package:flutter/material.dart';
import 'package:widgets_app/widgets/home_page.dart';
import 'package:widgets_app/widgets/navigator/tela_um.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(seconds: 2));

  runApp(const MyApp());
}

class FlutterNativeSplash {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: MaterialColor(
          0xFF022601,
          const {
            50: const Color(0xFF022601),
          },
        ),
        appBarTheme: AppBarTheme(
          color: MaterialColor(
            0xFF022601,
            const {
              50: const Color(0xFF022601),
            },
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Widgets App'),
      routes: {
        '/tela_um': (context) => const TelaUm(),
      },
    );
  }
}
