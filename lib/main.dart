import 'package:flutter/material.dart';
import 'package:navigation/page_one.dart';
import 'package:navigation/page_two.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/first-page': (context) => const PageOne(),
        '/second-page': (context) => const PageTwo(),
      },
      home: const PageOne(),
    );
  }
}
