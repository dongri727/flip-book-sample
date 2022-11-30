import 'dart:async';

import 'package:flutter/material.dart';

class StackItem extends StatefulWidget {

  const StackItem(
      {required this.imagePath, required this.visibleMilliseconds, super.key});
  final String imagePath;
  final int visibleMilliseconds;

  @override
  State<StackItem> createState() => _StackItemState();
}

class _StackItemState extends State<StackItem> {
  // 画像の透明度を保持する値
  double _opacity = 1.0;

  late Timer opacityTimer;

  @override
  void initState() {
    super.initState();

    // 画像が透明になり始めるまでの時間
    opacityTimer =
        Timer(Duration(milliseconds: widget.visibleMilliseconds), () {
          setState(() {
            _opacity = 0.0;
          });
        });
  }

  @override
  void dispose() {
    super.dispose();
    opacityTimer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 1000), 
      opacity: _opacity,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}