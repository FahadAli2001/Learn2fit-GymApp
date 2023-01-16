import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Payment/PaymentScreen.dart';

class transformPackages extends StatelessWidget {
  const transformPackages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Start Your Transformation",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: Get.width * 0.06
                    ),),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Container(
                    width: Get.width,
                    //height: Get.height * 0.55,
                    //color: Colors.teal,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey
                      )
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: Get.width,
                          height:  Get.height * 0.07,
                          color: Colors.green,
                          child: Center(
                            child: Text("2 Month Transformation Package",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.05
                            ),),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "Fitness Education Session about Diet and Training",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "Personalized Nutrition & Training Consultation: This includes diet plans (with multi options), training programs, and complete guidance for the duration of the package",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "Weekly Monitoring: Fix in-depth weekly calls at your convenience to discuss your progress and receive course corrections, if needed",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "Continuous Support: Your Advance Coach is just a phone call or message away ",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CupertinoButton(
                            color: Colors.green,
                              child: Text("200-PKR",
                          style: TextStyle(
                            color: Colors.white
                          ),),
                              onPressed: (){
                              Get.to(PaymentScreen());
                              }),
                        )
                      ],
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Container(
                    width: Get.width,
                   // height: Get.height * 0.55,
                    //color: Colors.teal,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey
                        )
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: Get.width,
                          height:  Get.height * 0.07,
                          color: Colors.green,
                          child: Center(
                            child: Text("Customized Diet Plan",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Get.width * 0.05
                              ),),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "Diet Plan for 1 month with multi options",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "Diet plan based on your initial assessment and target weight loss that you can opt any place",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "High Carb Diet [60:25:15] (For excess Fat persons)",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "Moderate Carb Diet [50:30:20]",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "Zone Diet [40:30:30]",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "Low Carb Diet [25:35:40]",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "Keto Diet [05:35:60]",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 20,
                            ),
                            title: Text(
                              "intermittent fasting Diet Plan",
                              style: TextStyle(
                                  color: Colors.black, fontSize: Get.width * 0.03),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CupertinoButton(
                              color: Colors.green,
                              child: Text("200-PKR",
                                style: TextStyle(
                                    color: Colors.white
                                ),),
                              onPressed: (){}),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
