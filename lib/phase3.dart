import 'dart:async';
import 'package:flutter/material.dart';

import 'custom_page_route.dart';
import 'next_stage.dart';
import 'phase2/opacity.dart';

class Flipbook extends StatefulWidget {
  const Flipbook({Key? key}) : super(key: key);

  @override
  _FlipbookState createState() => _FlipbookState();
}

class _FlipbookState extends State<Flipbook>{

  Timer? timer;

  final items = const <StackItem>[
    StackItem(
      imagePath: 'assets/images/14.jpeg',
      visibleMilliseconds: 7000,
    ),
    StackItem(
      imagePath: 'assets/images/13.jpeg',
      visibleMilliseconds: 6500,
    ),
    StackItem(
      imagePath: 'assets/images/12.jpeg',
      visibleMilliseconds: 6000,
    ),
    StackItem(
      imagePath: 'assets/images/11.jpeg',
      visibleMilliseconds: 5500,
    ),
    StackItem(
      imagePath: 'assets/images/10.jpeg',
      visibleMilliseconds: 5000,
    ),
    StackItem(
      imagePath: 'assets/images/9.jpeg',
      visibleMilliseconds: 4500,
    ),
    StackItem(
      imagePath: 'assets/images/8.jpeg',
      visibleMilliseconds: 4000,
    ),
    StackItem(
      imagePath: 'assets/images/7.jpeg',
      visibleMilliseconds: 3500,
    ),
    StackItem(
      imagePath: 'assets/images/6.jpeg',
      visibleMilliseconds: 3000,
    ),
    StackItem(
      imagePath: 'assets/images/5.jpeg',
      visibleMilliseconds: 2500,
    ),
    StackItem(
      imagePath: 'assets/images/4.jpeg',
      visibleMilliseconds: 2000,
    ),
    StackItem(
      imagePath: 'assets/images/3.jpeg',
      visibleMilliseconds: 1500,
    ),
    StackItem(
      imagePath: 'assets/images/2.jpeg',
      visibleMilliseconds: 1000,
    ),
    StackItem(
      imagePath: 'assets/images/1.jpeg',
      visibleMilliseconds: 500,
    ),
  ];

  @override
  void initState() {
    super.initState();

    timer = Timer(
      const Duration(milliseconds: 9000),
          () {
        Navigator.push(
          context,
          CustomPageRoute(
            const NextStage(),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: items,
        ));
  }
}