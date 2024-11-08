import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ClassTimimgs/ClassTimings.dart';
import '../Utils/utils.dart';

// ignore: must_be_immutable
class PysicalInformation extends StatelessWidget {
  PysicalInformation({Key? key}) : super(key: key);

  Utils ut = Get.put(Utils());

  var height = 1.obs;
  var weight = 1.obs;
  var targetWeight = 1.obs;
  var waistSize = 10.obs;
  var textsize = Get.width * 0.045;

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    var height = 1.obs;
    var weight = 1.obs;
    var targetWeight = 1.obs;
    var waistSize = 10.obs;
    var textsize = Get.width * 0.045;
=======
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: const Text(
          "Physical Information",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
          child: CupertinoButton(
            color: Colors.green,
            onPressed: () {
<<<<<<< HEAD
              Get.to(const ClassTimings());
=======
              Get.to(() => ClassTimings());
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
            },
            child: const Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                // fontSize: Get.width * 0.06
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: textsize),
                      ),
                      //
                      Obx(
                        () => Text(
                          "${height.value} cm",
                          style: TextStyle(
                              color: ut.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: textsize),
                        ),
                      ),
                    ],
                  )),
              //
              Obx(
                () => Slider(
<<<<<<< HEAD
=======
                  thumbColor: Colors.green,
                  activeColor: Colors.green,
                  inactiveColor: Colors.green,
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                  value: height.value.toDouble(),
                  min: 1,
                  max: 310,
                  divisions: 310,
                  label: '$height',
                  onChanged: (double newValue) {
                    height.value = newValue.toInt();
                  },
                ),
              ),
              //
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: textsize),
                      ),
                      //
                      Obx(
                        () => Text(
                          "${weight.value} kg",
                          style: TextStyle(
                              color: ut.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: textsize),
                        ),
                      ),
                    ],
                  )),
              //
              Obx(
                () => Slider(
                  value: weight.value.toDouble(),
                  min: 1,
                  max: 310,
                  divisions: 310,
                  label: '$weight',
                  onChanged: (double newValue) {
                    weight.value = newValue.toInt();
                  },
                ),
              ),
              //
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Target Weight",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: textsize),
                      ),
                      //
                      Obx(
                        () => Text(
                          "${targetWeight.value} kg",
                          style: TextStyle(
                              color: ut.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: textsize),
                        ),
                      ),
                    ],
                  )),
              //
              Obx(
                () => Slider(
                  value: targetWeight.value.toDouble(),
                  min: 1,
                  max: 310,
                  divisions: 310,
                  label: '$targetWeight',
                  onChanged: (double newValue) {
                    targetWeight.value = newValue.toInt();
                  },
                ),
              ),
              //
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Waist Size",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: textsize),
                      ),
                      //
                      Obx(
                        () => Text(
                          "${waistSize.value} cm",
                          style: TextStyle(
                              color: ut.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: textsize),
                        ),
                      ),
                    ],
                  )),
              //
              Obx(
                () => Slider(
                  value: waistSize.value.toDouble(),
                  min: 1,
                  max: 150,
                  divisions: 150,
                  label: '$waistSize',
                  onChanged: (double newValue) {
                    waistSize.value = newValue.toInt();
                  },
                ),
              ),
              //
            ],
          ),
        ),
      ),
    ));
  }
}
