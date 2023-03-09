import 'package:flutter/material.dart';

class ExampleCores {
  Color c1 = const Color(0xFF42A5F5);
  Color c2 = const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5);
  Color c3 = const Color.fromARGB(255, 66, 165, 245);
  Color c4 = const Color.fromRGBO(66, 165, 245, 1.0);

  Color buttonYellow = const Color(0xFFE6B800);
  Color buttonBlue = const Color(0xFF42A5F5);
  Color buttonRed = const Color(0xFFE53935);
  Color buttonGreen = const Color(0xFF66BB6A);
  Color buttonPurple = const Color(0xFFAB47BC);
  Color buttonOrange = const Color(0xFFFFA726);
  Color buttonPink = const Color(0xFFEC407A);

  MaterialStateProperty<Color> buttonYellowMaterial =
      MaterialStateProperty.all(const Color(0xFFE6B800));
  MaterialStateProperty<Color> buttonBlueMaterial =
      MaterialStateProperty.all(const Color(0xFF42A5F5));
  MaterialStateProperty<Color> buttonRedMaterial =
      MaterialStateProperty.all(const Color(0xFFE53935));
  MaterialStateProperty<Color> buttonGreenMaterial =
      MaterialStateProperty.all(const Color(0xFF66BB6A));
  MaterialStateProperty<Color> buttonPurpleMaterial =
      MaterialStateProperty.all(const Color(0xFFAB47BC));
  MaterialStateProperty<Color> buttonOrangeMaterial =
      MaterialStateProperty.all(const Color(0xFFFFA726));
  MaterialStateProperty<Color> buttonPinkMaterial =
      MaterialStateProperty.all(const Color(0xFFEC407A));
}
