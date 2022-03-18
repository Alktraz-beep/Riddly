import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.red,
    );
  }
}

class HeaderDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: [
          Container(
              child: CustomPaint(
            painter: _HeaderDesingPainter(),
          )),
          Container(
            height: 150,
            color: Colors.black,
          ),
          Container(
            height: 150,
            color: Colors.blue,
          ),
          Container(
            height: 150,
            color: Colors.pink,
          ),
          Container(
            height: 150,
            color: Colors.green,
          ),
          Container(
            height: 150,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}

class _HeaderDesingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //propiedades
    final lapiz = Paint();

    lapiz.color = Colors.red;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = Path();
    //ruta

    path.moveTo(0, size.height * 0.3);
    path.lineTo(size.width * .45, size.height * 0.4);
    path.lineTo(size.width * .90, size.height * 0.4);
    path.lineTo(size.width, size.height * 0.35);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(_HeaderDesingPainter oldDelegate) {
    return true;
  }
}
