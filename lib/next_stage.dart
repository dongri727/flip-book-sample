import 'package:flutter/material.dart';

class NextStage extends StatelessWidget{
  const NextStage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
        'Où vas-tu, \n mon Papa Noël ?',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}