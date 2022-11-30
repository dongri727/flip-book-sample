import 'package:flutter/material.dart';

//homeを選択するとimport先が変わる
import 'phase1/page1.dart';
import 'phase2/stack_items.dart';
import 'phase3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flip Book Sample',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
      ),

      //下記のhomeいずれかを選ぶとPhaseが変わる
      //home: const Page1(),
      //home: const StackItems(),
      home: const Flipbook(),
    );
  }
}
