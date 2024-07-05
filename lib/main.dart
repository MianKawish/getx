import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/ImageExample.dart';
import 'package:getx/firebase_options.dart';
import 'package:getx/homeScreen.dart';
import 'package:getx/login.dart';
import 'package:getx/shoppingCart.dart';
import 'package:getx/splash_screen.dart';
import 'package:getx/utils/sliderContainer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false, title: 'getx', home: ImageExample());
  }
}
