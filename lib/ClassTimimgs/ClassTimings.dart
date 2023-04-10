import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Plans/PlansScreen.dart';

class ClassTimings extends StatelessWidget {
  const ClassTimings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var selectedclass = "class".obs;

    // ignore: no_leading_underscores_for_local_identifiers
    var _value = false.obs;
    // ignore: no_leading_underscores_for_local_identifiers, unused_element
    void _handleRadioValueChanged(val) {
      _value.value = val;
    }

    var textsize = Get.width * 0.045;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: const Text(
          "Class Timings",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
          child: CupertinoButton(
            color: Colors.green,
            onPressed: () {
              Get.to(const PlansScreen());
            },
            child: const Text(
              "Done",
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Choose Your Prefered Timings",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.05),
                  ),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Container(
                  child: Column(
                    children: [
                      Obx(
                        () => Container(
                          height: Get.height * 0.06,
                          width: Get.width,
                          //color: Colors.red,
                          child: RadioListTile(
                            title: Text(
                              "Class A",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: textsize),
                            ),
                            value: "Class A",
                            groupValue: selectedclass.value,
                            onChanged: (val) {
                              selectedclass.value = val.toString();
                            },
                          ),
                        ),
                      ),
                      //----------
                      Obx(
                        () => Container(
                          height: Get.height * 0.06,
                          width: Get.width,
                          //color: Colors.red,
                          child: RadioListTile(
                            title: Text(
                              "Class B",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: textsize),
                            ),
                            value: "Class B",
                            groupValue: selectedclass.value,
                            onChanged: (val) {
                              selectedclass.value = val.toString();
                            },
                          ),
                        ),
                      ),
                      //-------
                      Obx(
                        () => Container(
                          height: Get.height * 0.06,
                          width: Get.width,
                          //color: Colors.red,
                          child: RadioListTile(
                            title: Text(
                              "Class C",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: textsize),
                            ),
                            value: "Class C",
                            groupValue: selectedclass.value,
                            onChanged: (val) {
                              selectedclass.value = val.toString();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
