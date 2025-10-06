import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const SettingsScreen({
    Key? key,
    required this.toggleTheme,
    required this.isDarkMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Text('Dark Mode'),
            Switch(value: isDarkMode, onChanged: (_) => toggleTheme()),
          ],
        ),
      ),
    );
  }
}
