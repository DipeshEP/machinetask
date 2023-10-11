import 'dart:async';

import 'package:flutter/material.dart';
import 'package:machine_test_accruon/constants/color.dart';
import 'package:machine_test_accruon/src/pages/Login.dart';

class MyHomePage extends StatefulWidget {
  final camera;
  const MyHomePage( {required this.camera});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Login()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
            color: Colour.babyBlue,
            child:Column(
              children: [
                FlutterLogo(size:MediaQuery.of(context).size.height*.6),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.1,
                ),
                const Text("Accruon",style: TextStyle(color: Colour.darkBlue,fontWeight: FontWeight.w600,fontSize: 40),)
              ],
            )
        ),
      ],
    );
  }
}