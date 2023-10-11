
import 'package:flutter/material.dart';
import 'package:machine_test_accruon/src/pages/Login_Page.dart';
import 'package:machine_test_accruon/src/pages/splash_screen.dart';

class MyApp extends StatelessWidget {
  final camera;
  const MyApp({super.key, this.camera});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accruon ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(camera:camera ),
    );
  }
}
