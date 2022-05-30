//esta clase contiene el menu princi
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/arrow_animation.dart';
import 'package:flutter_application_1/src/pages/headers_niveles.dart';

class HeaderMenuTuto extends StatefulWidget {
  HeaderMenuTuto({Key? key}) : super(key: key);

  @override
  State<HeaderMenuTuto> createState() => _Header_MenuTuto();
}

class _Header_MenuTuto extends State<HeaderMenuTuto> {
  Color _color_easteregg = Color(0xFF8E1FFF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/fondo.png")),
        ),
        child: Column(
          children: [
            crearAppBarMenu(),
            Container(
              height: MediaQuery.of(context).size.height * .1,
            ),
            crearMenuNiveles(),
          ],
        ),
      ),
    );
  }

  Container crearMenuNiveles() {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * .5,
      child: Row(
        children: [
          Container(
            width: 20,
          ),
          Expanded(
            flex: 10,
            child: Column(
              children: [
                Container(height: 10),
                //NIVEL 1
                Container(height: 10),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade400,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 2.0,
                              color: Colors.purple.shade900)
                        ]),
                    child: SizedBox(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                              left: MediaQuery.of(context).size.width - 180,
                              child: ArrowAnimaton()),
                          TextButton(
                            child: Text(
                              "RIDDLE 1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Miltown',
                                  shadows: [
                                    Shadow(
                                        offset: Offset(2.0, 1.0),
                                        color: Colors.green)
                                  ]),
                            ),
                            onPressed: () {
                              /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HeadersNivel()));*/
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //NIVEL 2
                Container(height: 10),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade400,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 2.0,
                              color: Colors.purple.shade900)
                        ]),
                    child: TextButton(
                      child: Text(
                        "RIDDLE 2",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Miltown',
                            shadows: [
                              Shadow(
                                  offset: Offset(2.0, 1.0), color: Colors.green)
                            ]),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                //NIVEL 3
                Container(height: 10),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade400,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 2.0,
                              color: Colors.purple.shade900)
                        ]),
                    child: TextButton(
                      child: Text(
                        "RIDDLE 3",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Miltown',
                            shadows: [
                              Shadow(
                                  offset: Offset(2.0, 1.0), color: Colors.green)
                            ]),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                //NIVEL 4
                Container(height: 10),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade400,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 2.0,
                              color: Colors.purple.shade900)
                        ]),
                    child: TextButton(
                      child: Text(
                        "RIDDLE 4",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Miltown',
                            shadows: [
                              Shadow(
                                  offset: Offset(2.0, 1.0), color: Colors.green)
                            ]),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                //NIVEL 5
                Container(height: 10),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade400,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 2.0,
                              color: Colors.purple.shade900)
                        ]),
                    child: TextButton(
                      child: Text(
                        "RIDDLE 5",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Miltown',
                            shadows: [
                              Shadow(
                                  offset: Offset(2.0, 1.0), color: Colors.green)
                            ]),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 20,
          )
        ],
      ),
    );
  }

  Container crearAppBarMenu() {
    return Container(
      height: MediaQuery.of(context).size.width * .3,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF8E1FFF),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFA145FF),
            offset: Offset(0, 5),
            blurRadius: 6,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: Text("Riddly",
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                        fontFamily: 'Miltown2',
                        shadows: [
                          Shadow(
                              offset: Offset(3.0, 3.0),
                              color: Colors.green.shade500)
                        ])),
              )),
        ],
      ),
    );
  }
}
