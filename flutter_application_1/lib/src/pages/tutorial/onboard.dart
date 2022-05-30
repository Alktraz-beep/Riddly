import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/arrow_animation.dart';
import 'package:flutter_application_1/src/pages/tutorial/headers_menu_tuto.dart';

class Onboard extends StatefulWidget {
  Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HeaderMenuTuto(),
          Positioned(
              left: 30,
              top: MediaQuery.of(context).size.height * .15 + 10,
              width: 300,
              height: 50,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0x77000000),
                ),
                child: Text(
                  "First you have to select the level",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
