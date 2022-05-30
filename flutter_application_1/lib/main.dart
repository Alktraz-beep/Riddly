import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/src/pages/header_menu.dart';
import 'package:flutter_application_1/src/pages/headers_niveles.dart';
import 'package:flutter_application_1/src/pages/tutorial/onboard.dart';

/*PROYECTO FINAL 
Bustamante Valdéz Jessica Dayana
Diaz García Profirio
Ramírez Viramontes Josue Yafte
 */
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp]); //para dejarlo vertical
    return MaterialApp(
      debugShowCheckedModeBanner: false, //para quitar la etiqueta
      title: "Riddly",
      home: HeaderMenu(),
    );
  }
  //Onboard(),
}
