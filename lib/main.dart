import 'package:clima/BarMenu.dart';
import 'package:clima/BodyMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Login.dart';
import 'contenedor.dart';
import 'feed_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //2lineas
    debugShowCheckedModeBanner:
    false;
    visualDensity:
    VisualDensity.adaptivePlatformDensity;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(), //Login(),
    );
  }
}
