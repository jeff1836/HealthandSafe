import 'package:flutter/material.dart';

class FamilyOverviewPage extends StatelessWidget {
  const FamilyOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('家屬總覽')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildElderCard(context, '陳阿嬤', '血壓偏高'),
          _buildElderCard(context, '林伯伯', '心率正常'),
        ],
      ),
    );
  }

  Widget _buildElderCard(BuildContext context, String name, String status) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.person),
        title: Text(name),
        subtitle: Text('狀態：$status'),
        trailing: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/history');
          },
          child: const Text('查看詳細'),
        ),
      ),
    );
  }
}
