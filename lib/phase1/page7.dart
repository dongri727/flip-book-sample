import 'dart:async';
import 'package:flutter/material.dart';
import '../custom_page_route.dart';
import 'page8.dart';


class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
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
            const Page8(),
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
                image: AssetImage('assets/images/8.jpeg'),
                fit: BoxFit.cover,
              )),
        ));
  }
}
