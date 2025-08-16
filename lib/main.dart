import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(const HealthApp());
}

class HealthApp extends StatelessWidget {
  const HealthApp({Key? key}) : super(key: key);
  // ...
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '安心健康',
      theme: ThemeData(useMaterial3: true),
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
