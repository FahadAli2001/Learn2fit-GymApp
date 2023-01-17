import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Dashboard/Dashboard.dart';
import 'SignIn/SignInScreen.dart';

class startingScreen extends StatelessWidget {
  const startingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final PageController _pageController =
    PageController();

    List<String> imagesUrl = [
      "assets/logo.JPG",
      "assets/logo.JPG",
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/f.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: Get.height * 0.5,
                  width: Get.width,
                  //color: Colors.red,
                  child:  PageView.builder(
                    controller: _pageController,
                    itemCount: imagesUrl.length,
                    itemBuilder: (_, index) => Column(
                      children: [
                        Container(
                          width: Get.width ,
                          height: Get.height * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage(
                                  imagesUrl[index],
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Work Out Any Where",style: TextStyle(
                            fontSize: Get.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Work Out Any Where",style: TextStyle(
                              fontSize: Get.width * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        )
                      ],
                    )
                  ),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SmoothPageIndicator(
                  controller: _pageController, // PageController
                  count: imagesUrl.length,
                  effect: ExpandingDotsEffect(
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
                    onTap: (){
                      Get.to(Dashboard());
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                      child: Center
                        (
                        child: Icon(CupertinoIcons.forward,
                        color: Colors.black,
                        size: Get.width * 0.09,),
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
