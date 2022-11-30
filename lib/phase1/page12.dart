import 'dart:async';
import 'package:flutter/material.dart';
import '../custom_page_route.dart';
import 'page13.dart';


class Page12 extends StatefulWidget {
  const Page12({Key? key}) : super(key: key);

  @override
  _Page12State createState() => _Page12State();
}

class _Page12State extends State<Page12> {
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
            const Page13(),
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
                image: AssetImage('assets/images/12.jpeg'),
                fit: BoxFit.cover,
              )),
        ));
  }
}
