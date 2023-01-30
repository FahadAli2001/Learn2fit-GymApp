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
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM.jpeg",
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM-2.jpeg",
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.54-PM.jpeg",
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM-1.jpeg"
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
                  child:Container(
                    width: Get.width * 0.3,
                    height: Get.height * 0.15,
                    decoration: BoxDecoration(
                      image:
                      DecorationImage(
                          image:AssetImage("assets/logo.png"),fit: BoxFit.fill),
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  )
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
