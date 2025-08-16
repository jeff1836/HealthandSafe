import 'package:flutter/material.dart';

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('緊急求助')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // 求助邏輯
              },
              icon: const Icon(Icons.warning),
              label: const Text('一鍵求助'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
            const SizedBox(height: 24),
            const Text('聯絡人列表', style: TextStyle(fontSize: 18)),
            _buildContactTile('王小明', '0912-345-678'),
            _buildContactTile('李大華', '0987-654-321'),
            const SizedBox(height: 16),
            const Text('目前位置：桃園市蘆竹區'),
          ],
        ),
      ),
    );
  }

  Widget _buildContactTile(String name, String phone) {
    return ListTile(
      leading: const Icon(Icons.phone),
      title: Text(name),
      subtitle: Text(phone),
      trailing: IconButton(
        icon: const Icon(Icons.call),
        onPressed: () {
          // 撥號邏輯
        },
      ),
    );
  }
}
