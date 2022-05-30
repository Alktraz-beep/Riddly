import 'package:flutter/material.dart';

class ArrowAnimaton extends StatefulWidget {
  ArrowAnimaton({Key? key}) : super(key: key);

  @override
  State<ArrowAnimaton> createState() => _ArrowAnimatonState();
}

class _ArrowAnimatonState extends State<ArrowAnimaton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1500))
          ..forward()
          ..addListener(() {
            if (controller.isCompleted) {
              controller.repeat();
            }
          });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
  }

  double y = 0.0;
  double oscilar(double valor) {
    y = 50 * (0.5 - (0.5 - Curves.bounceOut.transform(valor)).abs());
    return y;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        width: 200,
        child: Container(
          child: Stack(alignment: Alignment.centerLeft, children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) => Transform.translate(
                offset: Offset(oscilar(controller.value), 0),
                child: child,
              ),
              child: Container(
                height: 60,
                width: 150,
                //color: Colors.blue,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/arrow_animation.png"),
                )),
              ),
            ),
          ]),
        ));
  }
}
