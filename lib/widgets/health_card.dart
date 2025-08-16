import 'package:flutter/material.dart';

class HealthCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const HealthCard({
    super.key,
    required this.title,
    required this.value,
    this.icon = Icons.favorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.redAccent),
        title: Text(title),
        subtitle: Text(value, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
        