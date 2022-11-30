import 'package:flutter/material.dart';


class Page14 extends StatelessWidget {
  const Page14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/14.jpeg'),
                fit: BoxFit.cover,
              )),
        ));
  }
}
