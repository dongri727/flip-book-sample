import 'dart:async';
import 'package:flutter/material.dart';
import '../custom_page_route.dart';
import 'page5.dart';


class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
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
            const Page5(),
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
                image: AssetImage('assets/images/4.jpeg'),
                fit: BoxFit.cover,
              )),
        ));
  }
}
