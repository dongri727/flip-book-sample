import 'dart:async';
import 'package:flutter/material.dart';
import '../custom_page_route.dart';
import 'page11.dart';


class Page10 extends StatefulWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  _Page10State createState() => _Page10State();
}

class _Page10State extends State<Page10> {
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
            const Page11(),
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
                image: AssetImage('assets/images/10.jpeg'),
                fit: BoxFit.cover,
              )),
        ));
  }
}
