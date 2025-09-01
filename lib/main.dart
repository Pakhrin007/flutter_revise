import 'package:flutter/material.dart';
import 'package:revise/btn_navBar/Bottom_navBar.dart';
import 'package:revise/tab_bar/tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabs(),
    );
  }
}
