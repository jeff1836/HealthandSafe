import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('通知設定')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: '通知類型'),
              value: '提醒',
              items: const [
                DropdownMenuItem(value: '提醒', child: Text('提醒')),
                DropdownMenuItem(value: '警告', child: Text('警告')),
                DropdownMenuItem(value: '健康建議', child: Text('健康建議')),
              ],
              onChanged: (val) {
                // TODO: 更新通知類型
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '通知內容',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              onChanged: (val) {
                // TODO: 更新通知內容
              },
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              title: const Text('啟用通知'),
              value: true,
              onChanged: (val) {
                // TODO: 切換通知開關
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: 儲存通知設定
              },
              icon: const Icon(Icons.save),
              label: const Text('儲存設定'),
            ),
          ],
        ),
      ),
    );
  }
}
