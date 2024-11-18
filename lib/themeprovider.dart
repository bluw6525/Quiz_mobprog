import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  final List<Color> colors = [
    Colors.deepPurple,
    Colors.blue,
    Colors.orange,
  ];

  final List<String> fonts = [
    'Roboto',
    'Libre',
    'Chokokutai',
  ];

  int _currentColorIndex = 0;
  int _currentFontIndex = 0;

  int get currentColorIndex => _currentColorIndex;
  int get currentFontIndex => _currentFontIndex;

  Color get currentColor => colors[_currentColorIndex];
  String get currentFont => fonts[_currentFontIndex];

  ThemeData get currentTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: currentColor),
      useMaterial3: true,
      fontFamily: currentFont,
    );
  }

  void changeColor(int index) {
    if (index >= 0 && index < colors.length) {
      _currentColorIndex = index;
      notifyListeners();
    }
  }

  void changeFont(int index) {
    if (index >= 0 && index < fonts.length) {
      _currentFontIndex = index;
      notifyListeners();
    }
  }
}
