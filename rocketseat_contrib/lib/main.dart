import 'package:flutter/material.dart';
import 'package:rocketseat_contrib/src/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0XFF7159C1),
        hintColor: Colors.amberAccent,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
