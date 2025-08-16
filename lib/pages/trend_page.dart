import 'package:flutter/material.dart';

class TrendPage extends StatelessWidget {
  const TrendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('健康趨勢')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('選擇時間範圍', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTimeButton('週'),
                const SizedBox(width: 8),
                _buildTimeButton('月'),
              ],
            ),
            const SizedBox(height: 24),
            _buildChartPlaceholder('血壓趨勢'),
            _buildChartPlaceholder('心率趨勢'),
            _buildChartPlaceholder('血糖趨勢'),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeButton(String label) {
    return ElevatedButton(
      onPressed: () {
        // 切換時間範圍邏輯
      },
      child: Text(label),
    );
  }

  Widget _buildChartPlaceholder(String title) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: ListTile(
        leading: const Icon(Icons.show_chart),
        title: Text(title),
        subtitle: const Text('圖表尚未載入'),
      ),
    );
  }
}
