import 'package:flutter/material.dart';

class ReminderPage extends StatelessWidget {
  const ReminderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('提醒設定')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildDropdown('提醒類型', ['服藥', '運動']),
            const SizedBox(height: 16),
            _buildTimePicker(context),
            const SizedBox(height: 16),
            SwitchListTile(
              title: const Text('啟用提醒'),
              value: true,
              onChanged: (val) {
                // 開關邏輯
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // 儲存邏輯
              },
              child: const Text('儲存'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(String label, List<String> options) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(labelText: label),
      items: options.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
      onChanged: (val) {},
    );
  }

  Widget _buildTimePicker(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.access_time),
      title: const Text('提醒時間'),
      trailing: const Text('08:00'),
      onTap: () {
        // 時間選擇邏輯
      },
    );
  }
}
