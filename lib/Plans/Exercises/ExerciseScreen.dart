import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

<<<<<<< HEAD
=======
import '../../Utils/utils.dart';

// ignore: must_be_immutable
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
class ExerciseScreen extends StatelessWidget {
  ExerciseScreen({Key? key}) : super(key: key);
  Utils ut = Get.put(Utils());

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(CupertinoIcons.back),
          color: Colors.black,
        ),
        title: Text(
          "Day ${data['dayvalue']}",
<<<<<<< HEAD
          style: const TextStyle(color: Colors.black),
=======
          style: TextStyle(color: ut.textColor),
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.2,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    image: const DecorationImage(
                        image: AssetImage("assets/logo.JPG"),
                        fit: BoxFit.fill)),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: Get.width * 0.25,
                      height: Get.height * 0.11,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                              image: AssetImage("assets/f.png"),
                              fit: BoxFit.fill)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Jumping Jack",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
<<<<<<< HEAD
                              color: Colors.black,
=======
                              color: ut.textColor,
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                              fontSize: Get.width * 0.045),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //
              const Divider(
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
