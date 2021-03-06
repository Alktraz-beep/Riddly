//esta clase contiene el menu princi
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/headers_niveles.dart';

class HeaderMenu extends StatefulWidget {
  HeaderMenu({Key? key}) : super(key: key);

  @override
  State<HeaderMenu> createState() => _Header_Menu();
}

class _Header_Menu extends State<HeaderMenu> {
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
                    child: TextButton(
                      child: Text(
                        "RIDDLE 1",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Miltown',
                            shadows: [
                              Shadow(
                                  offset: Offset(2.0, 1.0), color: Colors.green)
                            ]),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HeadersNivel(
                                      clearText:
                                          'spies are the ears and eyes of princes',
                                      cipherText:
                                          'sp21s 0r1 th1 10rs 0nd 1y1s 3f pr2nc1s',
                                      clueText: 'The sentence contains 7 e\'s',
                                      level: 1,
                                    )));
                      },
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HeadersNivel(
                                      clearText:
                                          'a pint of sweat saves a gallon of blood',
                                      cipherText:
                                          '9 p5nt 3f sw79t s9v7s 9 g9ll3n 3f bl77d',
                                      clueText:
                                          'the letter \'u\' is the younger brother and the letter \'a\' is the older',
                                      level: 2,
                                    )));
                      },
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HeadersNivel(
                                      clearText:
                                          'make each day you masterpiece',
                                      cipherText:
                                          'm3k4 43ch d3y y67 m3st4rp54c4',
                                      clueText: 'the order is in: \'mAlEfIcO\'',
                                      level: 3,
                                    )));
                      },
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HeadersNivel(
                                      clearText:
                                          'it is amazing what you can do when you try',
                                      cipherText:
                                          '4t 4s 8m8z4ng wh8t y20 c8n d2 wh6n y20 try',
                                      clueText: 'You can if you try',
                                      level: 4,
                                    )));
                      },
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HeadersNivel(
                                      clearText:
                                          'in war there is no substitute for victory',
                                      cipherText:
                                          '?n w#r t@r@ ?s n% s*bst?t*t@ f%r v?ct%ry',
                                      clueText:
                                          'the question mark is \'i\'  and hashtag by \'a\'',
                                      level: 5,
                                    )));
                      },
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
                child: TextButton(
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
                  onPressed: () {
                    setState(() {
                      _color_easteregg = Colors.white;
                    });
                  },
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "1534689463",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Miltown2',
                      color: _color_easteregg),
                ),
              ))
        ],
      ),
    );
  }
}
