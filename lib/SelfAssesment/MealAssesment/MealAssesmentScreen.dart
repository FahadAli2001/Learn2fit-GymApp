import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'BreakFast/BreakFastScreen.dart';

class MealAssesmentScreen extends StatelessWidget {
  const MealAssesmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var breakfast = true.obs;
    var lunch = false.obs;
    var dinner = false.obs;
    return Obx(()=>
       Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.045,

                decoration: BoxDecoration(
                   // color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                          ()=> GestureDetector(
                        onTap:(){
                          breakfast.value = true;
                          lunch.value = false;
                          dinner.value = false;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: (breakfast.value == true)?Colors.green:null,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Text("BreakFast",
                                  style: TextStyle(
                                      color: (breakfast.value == true)?Colors.white:Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: Get.width * 0.04
                                  ),),
                              )),
                        ),
                      ),
                    ),
                    //
                    Obx(
                          ()=> GestureDetector(
                        onTap: (){
                          lunch.value = true;
                          breakfast.value = false;
                          dinner.value = false;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: (lunch.value == true)?Colors.green:null,
                            borderRadius: BorderRadius.circular(20),
                            //color: Colors.green
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Text("Lunch",
                                  style: TextStyle(
                                      color: (lunch.value == true)?Colors.white:Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: Get.width * 0.04
                                  ),),
                              )),
                        ),
                      ),
                    ),
                    //
                    Obx(
                          ()=> GestureDetector(
                        onTap: (){
                          dinner.value = true;
                          breakfast.value = false;
                          lunch.value = false;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: (dinner.value == true)?Colors.green:null,
                            borderRadius: BorderRadius.circular(20),
                            //color: Colors.green
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Text("Dinner",
                                  style: TextStyle(
                                      color: (dinner.value == true)?Colors.white:Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: Get.width * 0.04
                                  ),),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Meal Plan Assement",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.05
                    ),),
                ),
              ),
              if(breakfast.value == true)...[
                BreakFastScreen()
              ]

            ],
          ),
        ),
      ),
    );
  }
}
