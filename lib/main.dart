import 'package:flutter/material.dart';
import 'package:machine_test_accruon/src/src.dart';
import 'package:camera/camera.dart';


void main()async {

  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  runApp( MyApp(camera: firstCamera,));
}
