import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'welcomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
<<<<<<< HEAD
      Get.to(const welcomeScreen());
=======
      Get.to(() => welcomeScreen());
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill)),
    ));
  }
}
