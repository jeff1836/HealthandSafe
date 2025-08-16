import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('認知訓練')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('選擇遊戲類型', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            _buildGameButton('記憶力遊戲'),
            _buildGameButton('反應力遊戲'),
            const SizedBox(height: 24),
            const Text('分數：0', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget _buildGameButton(String label) {
    return ElevatedButton(
      onPressed: () {
        // 遊戲邏輯
      },
      child: Text(label),
    );
  }
}
