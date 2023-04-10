import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          inputDecorationTheme: const InputDecorationTheme(
            focusColor: Colors.green,
          ),
          primaryColor: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
