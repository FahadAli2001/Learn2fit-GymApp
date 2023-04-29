import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Dashboard/Dashboard.dart';
import 'Plans/PlansScreen.dart';
import 'SignIn/SignInController.dart';
<<<<<<< HEAD
=======
import 'Utils/utils.dart';
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32

// ignore: camel_case_types, must_be_immutable
class startingScreen extends StatelessWidget {
  startingScreen({Key? key}) : super(key: key);
  signInController signcon = Get.put(signInController());

  Utils ut = Get.put(Utils());

  final PageController _pageController = PageController();

  List<String> imagesUrl = [
    "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM.jpeg",
    "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM-2.jpeg",
    "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.54-PM.jpeg",
    "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM-1.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    signInController signcon = Get.put(signInController());

    final PageController _pageController = PageController();

    List<String> imagesUrl = [
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM.jpeg",
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM-2.jpeg",
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.54-PM.jpeg",
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM-1.jpeg"
    ];
=======
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                    child: Container(
                  width: Get.width * 0.3,
                  height: Get.height * 0.15,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logo.png"), fit: BoxFit.fill),
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  height: Get.height * 0.5,
                  width: Get.width,
                  //color: Colors.red,
                  child: PageView.builder(
                      controller: _pageController,
                      itemCount: imagesUrl.length,
                      itemBuilder: (_, index) => Column(
                            children: [
                              Container(
                                width: Get.width,
                                height: Get.height * 0.3,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        imagesUrl[index],
                                      ),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              //
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Work Out Any Where",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.05,
                                      fontWeight: FontWeight.bold,
<<<<<<< HEAD
                                      color: Colors.black),
=======
                                      color: ut.textColor),
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Work Out Any Where",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.04,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                              )
                            ],
                          )),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SmoothPageIndicator(
                  controller: _pageController, // PageController
                  count: imagesUrl.length,
                  effect: const ExpandingDotsEffect(
                      dotHeight: 10,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.green), // your preferred effect
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Center(
                  child: GestureDetector(
                    onTap: () async {
                      final sp = await SharedPreferences.getInstance();
<<<<<<< HEAD
                      print(sp.getString("email"));
                      print(sp.getString("password"));
                      (sp.getString("email") != null)
                          ? Get.to(const PlansScreen())
                          : Get.to(const Dashboard());
=======

                      (sp.getString("email") != null)
                          ? Get.to(() => const PlansScreen())
                          : Get.to(() => const Dashboard());
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                      child: Center(
                        child: Icon(
                          CupertinoIcons.forward,
<<<<<<< HEAD
                          color: Colors.black,
=======
                          color: ut.black,
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                          size: Get.width * 0.09,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
