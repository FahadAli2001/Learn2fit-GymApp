import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'MealAssesment/MealAssesmentScreen.dart';
import 'TrainingAssesment/TrainingAssesmentScreen.dart';

class SelfAssement extends StatelessWidget {
  const SelfAssement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var MealAssesment = true.obs;
    // ignore: non_constant_identifier_names
    var TrainingAssesment = false.obs;
    return Obx(
      () => Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.045,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          MealAssesment.value = true;
                          TrainingAssesment.value = false;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: (MealAssesment.value == true)
                                  ? Colors.green
                                  : null,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Meal Assesment",
                              style: TextStyle(
                                  color: (MealAssesment.value == true)
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Get.width * 0.04),
                            ),
                          )),
                        ),
                      ),
                    ),
                    //
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          TrainingAssesment.value = true;
                          MealAssesment.value = false;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: (TrainingAssesment.value == true)
                                ? Colors.green
                                : null,
                            borderRadius: BorderRadius.circular(20),
                            //color: Colors.green
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Training Assesment",
                              style: TextStyle(
                                  color: (TrainingAssesment.value == true)
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Get.width * 0.04),
                            ),
                          )),
                        ),
                      ),
                    ),
                    //
                  ],
                ),
              ),
              (MealAssesment.value == true)
                  ? MealAssesmentScreen()
                  : const TrainingAssesmentScreen()
            ],
          ),
        ),
      ),
    );
  }
}
