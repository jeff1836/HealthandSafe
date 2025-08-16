import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('個人設定')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.text_fields),
              title: const Text('字體大小'),
              trailing: Slider(value: 16, min: 12, max: 24, onChanged: (val) {}),
            ),
            SwitchListTile(
              title: const Text('語音導覽'),
              value: true,
              onChanged: (val) {},
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('語言'),
              trailing: DropdownButton<String>(
                value: '繁中',