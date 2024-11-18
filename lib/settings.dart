import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/themeprovider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Choose Color:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            ColorOption(
              index: 0,
              color: themeProvider.colors[0],
              groupValue: themeProvider.currentColorIndex,
              onChanged: themeProvider.changeColor,
            ),
            ColorOption(
              index: 1,
              color: themeProvider.colors[1],
              groupValue: themeProvider.currentColorIndex,
              onChanged: themeProvider.changeColor,
            ),
            ColorOption(
              index: 2,
              color: themeProvider.colors[2],
              groupValue: themeProvider.currentColorIndex,
              onChanged: themeProvider.changeColor,
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Choose Font:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            FontOption(
              index: 0,
              font: themeProvider.fonts[0],
              groupValue: themeProvider.currentFontIndex,
              onChanged: themeProvider.changeFont,
            ),
            FontOption(
              index: 1,
              font: themeProvider.fonts[1],
              groupValue: themeProvider.currentFontIndex,
              onChanged: themeProvider.changeFont,
            ),
            FontOption(
              index: 2,
              font: themeProvider.fonts[2],
              groupValue: themeProvider.currentFontIndex,
              onChanged: themeProvider.changeFont,
            ),
          ],
        ),
      ),
    );
  }
}

class ColorOption extends StatelessWidget {
  final int index;
  final Color color;
  final int groupValue;
  final Function(int) onChanged;

  const ColorOption({
    super.key,
    required this.index,
    required this.color,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Color ${index + 1}'),
      leading: CircleAvatar(
        backgroundColor: color,
      ),
      trailing: Radio<int>(
        value: index,
        groupValue: groupValue,
        onChanged: (value) {
          if (value != null) onChanged(value);
        },
      ),
    );
  }
}

class FontOption extends StatelessWidget {
  final int index;
  final String font;
  final int groupValue;
  final Function(int) onChanged;

  const FontOption({
    super.key,
    required this.index,
    required this.font,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Font $font',
        style: TextStyle(fontFamily: font),
      ),
      trailing: Radio<int>(
        value: index,
        groupValue: groupValue,
        onChanged: (value) {
          if (value != null) onChanged(value);
        },
      ),
    );
  }
}
