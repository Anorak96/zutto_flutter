import 'package:flutter/material.dart';
import 'package:zutto_app/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: ThemeData(primarySwatch: Colors.green, primaryColor: Colors.green),
    );
  }
}
