import 'package:auto_size_text/auto_size_text.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagesUrl = [
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM.jpeg",
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM-2.jpeg",
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.54-PM.jpeg",
      "https://www.learn2fitt.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-19-at-11.22.43-PM-1.jpeg"
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const AutoSizeText(
            "Learn 2 fitt",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white70,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Weigth loss ',
                        style: TextStyle(
                            fontSize: Get.width * 0.06,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'is very easy if you have the knowledge',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                //
                CarouselSlider.builder(
                  itemCount: imagesUrl.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Get.width,
                      height: Get.height * 0.4,
                      decoration: BoxDecoration(
                          // color: Colors.orange,
                          image: DecorationImage(
                              image: NetworkImage(imagesUrl[itemIndex]),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  options: CarouselOptions(
                      autoPlay: true,
                      // enlargeCenterPage: true,
                      //height: Get.height * 0.1,
                      //aspectRatio: 16/9,
                      onPageChanged: (index, reason) {}),
                ),
                //
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text:
                            'We have seen many people doing Dieting or going to gym or doing exercises or excessive walking for months ',
                        style: TextStyle(
                          fontSize: Get.width * 0.045,
                          color: Colors.black,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'but no significant result came',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Center(
                    child: Text(
                      "Benifits",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.075),
                    ),
                  ),
                ),
                //
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Center(
                    child: Text(
                      "The Complete Fitness platform for your weight loss journey",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.045),
                    ),
                  ),
                ),

                //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 30,
                    ),
                    title: Text(
                      "Basic education of how our body gain weight and loss weight (The most important thing that we miss)",
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.035),
                    ),
                  ),
                ),
                //
                //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 30,
                    ),
                    title: Text(
                      "Science -backed Diet Plan (with multi options) as per your body requirement (with measurement and photos for your ease)",
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.035),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: const Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 30,
                    ),
                    title: Text(
                      "Personized Home Exercises with detail guidance in video + Coach will give you all guidance [You are not required to go to gym, unless you wish] ",
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.035),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 30,
                    ),
                    title: Text(
                      "Daily monitoring of your Diet intake",
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.035),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 30,
                    ),
                    title: Text(
                      "Daily monitoring for your exercises ",
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.035),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 30,
                    ),
                    title: Text(
                      "Weekly Detail Progress Monitoring and Coach Session over call based on your convenient call",
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.035),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 30,
                    ),
                    title: Text(
                      "Nutrition Facts for common foods",
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.035),
                    ),
                  ),
                ),
                //
                Center(
                  child: Text(
                    "What make us Unique",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.075),
                  ),
                ),
                //
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Center(
                    child: Text(
                      "Basic Diet Plan is free [you can access it on account creation]  OUR AIM IS YOUR LIFETIME FITNESS AND NUTRITION. EDUCATION Education for Nutrition. Education for Fitness. Your coach will increase your motivation and make you on track ALWAYS Coach time base on your availability",
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.037),
                    ),
                  ),
                ),
                //
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Center(
                    child: Text(
                      "The program is very useful for",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: Get.width * 0.045),
                    ),
                  ),
                ),
                //
                Container(
                  width: Get.width * 0.6,
                  height: Get.height * 0.28,
                  // color: Colors.blueGrey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.work,
                          color: Colors.green,
                          size: Get.width * 0.2,
                        ),
                      ),
                      //
                      Text(
                        "Office going professionals ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: Get.width * 0.04),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 8),
                        child: Center(
                          child: Text(
                            "Office going male and female who have daily routine for Office and want to decrease weight while managing office chores and outside dinning",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: Get.width * 0.03),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Container(
                  width: Get.width * 0.6,
                  height: Get.height * 0.25,
                  // color: Colors.blueGrey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.home,
                          color: Colors.green,
                          size: Get.width * 0.2,
                        ),
                      ),
                      //
                      Text(
                        "House Routine ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: Get.width * 0.04),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 8),
                        child: Center(
                          child: Text(
                            "Those who are mostly in house and want to reduce weight while home chores and occasional outside dining ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: Get.width * 0.03),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Container(
                  width: Get.width * 0.6,
                  height: Get.height * 0.25,
                  // color: Colors.blueGrey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.book,
                          color: Colors.green,
                          size: Get.width * 0.2,
                        ),
                      ),
                      //
                      Text(
                        "Students",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: Get.width * 0.04),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 8),
                        child: Center(
                          child: Text(
                            "College and University going students who aim to reduce their weight while managing their education life balance",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: Get.width * 0.03),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
