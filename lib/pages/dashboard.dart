import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('安心健康')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          // 導覽邏輯
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首頁'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: '紀錄'),
          BottomNavigationBarItem(icon: Icon(Icons.games), label: '遊戲'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('今日健康摘要', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            _buildHealthCard('血壓', '120 / 80 mmHg'),
            _buildHealthCard('心率', '72 bpm'),
            _buildHealthCard('血糖', '5.6 mmol/L'),
            const SizedBox(height: 16),
            const Text('今日提醒', style: TextStyle(fontSize: 18)),
            _buildReminderTile('服藥提醒', '08:00'),
            _buildReminderTile('運動提醒', '17:00'),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildQuickButton(context, '記錄健康', '/record'),
                _buildQuickButton(context, '認知訓練', '/game'),
                _buildQuickButton(context, '求助', '/emergency'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHealthCard(String title, String value) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(value),
        leading: const Icon(Icons.favorite),
      ),
    );
  }

  Widget _buildReminderTile(String title, String time) {
    return ListTile(
      leading: const Icon(Icons.notifications),
      title: Text(title),
      trailing: Text(time),
    );
  }

  Widget _buildQuickButton(BuildContext context, String label, String route) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, route),
      child: Text(label),
    );
  }
}
