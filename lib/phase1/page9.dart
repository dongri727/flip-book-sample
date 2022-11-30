import 'dart:async';
import 'package:flutter/material.dart';
import '../custom_page_route.dart';
import 'page10.dart';


class Page9 extends StatefulWidget {
  const Page9({Key? key}) : super(key: key);

  @override
  _Page9State createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  //Declare a timer
  Timer? timer;


  @override
  void initState() {
    super.initState();

    timer = Timer(
      const Duration(milliseconds: 500),
          () {
        Navigator.push(
          context,
          CustomPageRoute(
            const Page10(),
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
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/9.jpeg'),
                fit: BoxFit.cover,
              )),
        ));
  }
}
