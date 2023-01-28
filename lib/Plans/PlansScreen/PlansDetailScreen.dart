import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../MealPlan/MealPlan.dart';
import '../Progress/ProgressScreen.dart';
import '../TrainingPlan/TrainingPlan.dart';

class PlansDetailScreen extends StatelessWidget {
  const PlansDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var Mealplan = true.obs;
    var Trainingplan = false.obs;
    var progress = false.obs;
    return Scaffold(
      body: Obx(()=>
         SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * 0.045,

                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Obx(
                            ()=> GestureDetector(
                          onTap:(){
                            Mealplan.value = true;
                            Trainingplan.value = false;
                            progress.value = false;
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: (Mealplan.value == true)?Colors.green:null,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: Text("Meal Plan",
                                    style: TextStyle(
                                        color: (Mealplan.value == true)?Colors.white:Colors.black,
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
                            Mealplan.value = false;
                            Trainingplan.value = true;
                            progress.value = false;
                            print(Trainingplan.value);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: (Trainingplan.value == true)?Colors.green:null,
                                borderRadius: BorderRadius.circular(20),
                              //color: Colors.green
                            ),
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: Text("Training Plan",
                                    style: TextStyle(
                                        color: (Trainingplan.value == true)?Colors.white:Colors.black,
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
                          Mealplan.value = false;
                          Trainingplan.value = false;
                          progress.value = true;
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              // color: (self_assesment.value == true)?Colors.green:null,
                                borderRadius: BorderRadius.circular(20),
                                color: (progress.value==true)?Colors.green:null
                            ),
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: Text("Progress",
                                    style: TextStyle(
                                        color: (progress.value == true)?Colors.white:Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Get.width * 0.04
                                    ),),
                                )),
                          ),
                      ),
                      )

                    ],
                  ),
                ),
                //
                if(Mealplan.value == true )...[
            MealPlan()
          ]else if( Trainingplan.value==true)...[
                  TrainingPlan()
                ]else if( progress.value==true)...[
                  ProgresScreen()
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }

}





