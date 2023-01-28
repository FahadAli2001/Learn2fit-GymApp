import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'TrainAssesment/trainAssesment.dart';

class TrainingAssesmentScreen extends StatelessWidget {
  const TrainingAssesmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Training Plan Assesment",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: Get.width * 0.045
                ),),
              ),
            ),
            //
            Align(
              alignment: Alignment.topLeft,
              child: Text("View and update ypur plan and its good for health",
                style: TextStyle(
                    color: Colors.grey,
                    //fontWeight: FontWeight.bold,
                    fontSize: Get.width * 0.045
                ),),
            ),
            //
            Center(
              child: Container(
                width: Get.width * 0.7,
                height:  Get.height * 0.19,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(70),
                  image: DecorationImage(image: AssetImage("assets/logo.JPG"),
                  fit: BoxFit.fill)
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: GestureDetector(
                onTap: (){
                  Get.to(trainAssesment());
                },
                child: Container(
                  width: Get.width,
                  height: Get.height * 0.05,
                  //color: Colors.orange,
                  child: Row(
                    children: [
                      Container(

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Center(
                              child: Text("Day 1 ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),)),
                        ),
                        color: Colors.grey.shade100,
                      ),
                      //
                      Expanded(
                        child: Container(

                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Center(child: Text("5 exercise",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),)),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
