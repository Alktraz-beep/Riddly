import 'package:flutter/material.dart';

class HeadersNivel extends StatefulWidget {
  final String cipherText;
  final String clearText;
  final String clueText;
  final int level;
  const HeadersNivel(
      {Key? key,
      required this.cipherText,
      required this.clearText,
      required this.clueText,
      required this.level})
      : super(key: key);
  @override
  _nivel createState() => _nivel(
      cipherText: this.cipherText,
      clearText: this.clearText,
      clueText: this.clueText,
      level: this.level);
}

class _nivel extends State<HeadersNivel> {
  final String cipherText;
  final String clearText;
  final String clueText;
  final int level;
  _nivel(
      {required this.cipherText,
      required this.clearText,
      required this.clueText,
      required this.level});
  Color _color_cifrado = Color(0xFF03A062);
  Color _color_shadow_cifrado = Color(0xFF03A062);
  Color _color_letras_cifrado = Color(0xFF03A062);
  TextEditingController _control_respuesta = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //extendBodyBehindAppBar: true,
        //appBar: AppBar(title: Text("Riddly 1")),
        body: Column(
      children: [
        crearAppBarMenu1(),
        Expanded(
            flex: 1,
            child: Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    //PISTA
                    Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          alignment: Alignment.centerRight,
                          //color: Color(0xFF2AA650),
                          child: Stack(
                            children: [
                              Ink.image(
                                image: AssetImage("assets/images/clue.png"),
                                width: 50,
                                height: 50,
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return crearDialogPista();
                                        }); //para accion de lupa
                                  },
                                ),
                              ),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          child: TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green.shade300),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white)),
                            onPressed: () {
                              setState(() {
                                _color_cifrado = Color(0xFF000000); //
                                _color_shadow_cifrado = Color(0xFF01AF64);
                                _color_letras_cifrado = Color(0xFF02FC91);
                              });
                            },
                            child: Text("start"),
                          ),
                        )),
                    Expanded(flex: 3, child: Container())
                  ],
                ))),
        //TEXTO A DESCIFRAR ROW3
        Expanded(
            flex: 4,
            child: Container(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.width * .2,
                  child: Container(
                      alignment: Alignment.center,
                      color: _color_cifrado,
                      child: FittedBox(
                        child: Text(
                          cipherText,
                          style: TextStyle(
                            color: _color_letras_cifrado,
                            fontWeight: FontWeight.bold,
                            shadows: <Shadow>[
                              Shadow(
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 5.0,
                                  color: _color_shadow_cifrado)
                            ],
                          ),
                        ),
                      )),
                ))),
        //RESPUESTA Y BOTON QUE VERIFICA
        Expanded(
            flex: 4,
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    //RESPUESTA
                    Expanded(
                        flex: 3,
                        child: Container(
                          width: MediaQuery.of(context).size.width * .9,
                          child: TextField(
                            controller: _control_respuesta,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFABBABA))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF02FC91), width: 1)),
                              hintText: "Type the solution",
                            ),
                          ),
                        )),
                    //BOTON
                    Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.topCenter,
                          width: MediaQuery.of(context).size.width * .5,
                          child: TextButton(
                            onPressed: () {
                              if (_control_respuesta.value.text == clearText) {
                                //MENSAJE DE FELICITACION
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return crearDialogCongrats();
                                    });
                              } else {
                                //MENSAJE ERROR
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return crearDialogFallido();
                                    });
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF913DFF)),
                            ),
                            child: Text(
                              "Try",
                              style: TextStyle(color: Color(0xFFFFFFFF)),
                            ),
                          ),
                        ))
                  ],
                )))
      ],
    ));
  }

  //DIALOG CUANDO FALLA
  AlertDialog crearDialogFallido() {
    return AlertDialog(
      title: Text("Keep trying :("),
      content: Text("¡You can!"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Continue")),
      ],
    );
  }

  //DIALOG CUANDO ACIERTA
  AlertDialog crearDialogCongrats() {
    return AlertDialog(
      title: Text("¡Congratulations!"),
      content: Text("You are a super detective."),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Continue")),
      ],
    );
  }

  //DIALOG CUANDO PIDE PISTA

  AlertDialog crearDialogPista() {
    return AlertDialog(
      title: Text("Clue..."),
      content: Text(clueText),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("ok")),
      ],
    );
  }

  Container crearAppBarMenu1() {
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
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: TextButton(
                              child: Text(
                                "<",
                                style: TextStyle(
                                    fontFamily: 'Miltown',
                                    fontSize: 28,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          )),
                      Expanded(
                          flex: 5,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text("Riddly " + level.toString(),
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
                      Expanded(flex: 1, child: Container()),
                    ],
                  )
                  /**/
                  )),
        ],
      ),
    );
  }
}
