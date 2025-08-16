import 'package:flutter/material.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('健康紀錄')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('請輸入今日健康數值', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            _buildInputField('收縮壓 (mmHg)'),
            _buildInputField('舒張壓 (mmHg)'),
            _buildInputField('心率 (bpm)'),
            _buildInputField('血糖 (mmol/L)'),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                // 語音輸入邏輯
              },
              icon: const Icon(Icons.mic),
              label: const Text('語音輸入症狀'),
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

  Widget _buildInputField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
