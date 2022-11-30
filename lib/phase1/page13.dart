import 'dart:async';
import 'package:flutter/material.dart';
import '../custom_page_route.dart';
import 'page14.dart';


class Page13 extends StatefulWidget {
  const Page13({Key? key}) : super(key: key);

  @override
  _Page13State createState() => _Page13State();
}

class _Page13State extends State<Page13> {
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
            const Page14(),
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
                image: AssetImage('assets/images/13.jpeg'),
                fit: BoxFit.cover,
              )),
        ));
  }
}
