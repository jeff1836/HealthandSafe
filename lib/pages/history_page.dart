import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('健康歷史紀錄')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('日期範圍：2025/08/01 - 2025/08/15'),
          const SizedBox(height: 16),
          _buildRecordTile('2025/08/15', '血壓 130/85, 心率 75'),
          _buildRecordTile('2025/08/14', '血壓 125/80, 心率 72'),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () {
              // 匯出 PDF
            },
            icon: const Icon(Icons.picture_as_pdf),
            label: const Text('匯出 PDF'),
          ),
        ],
      ),
    );
  }

  Widget _buildRecordTile(String date, String data) {
    return ListTile(
      leading: const Icon(Icons.calendar_today),
      title: Text(date),
      subtitle: Text(data),
    );
  }
}
