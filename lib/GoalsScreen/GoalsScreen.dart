// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../UserData/UserDataScreen.dart';
import '../Utils/utils.dart';

class GoalsScreen extends StatelessWidget {
  GoalsScreen({Key? key}) : super(key: key);

  Utils ut = Get.put(Utils());

  var textsize = Get.width * 0.04;
  final _value = false.obs;
  void _handleRadioValueChanged(val) {
    _value.value = val;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ignore: avoid_unnecessary_containers
        bottomNavigationBar: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            child: CupertinoButton(
              color: Colors.green,
              onPressed: () {
                Get.to(() => UserDataScreen());
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Your Goals",
                      style: TextStyle(
                          color: ut.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.06),
                    ),
                  ),
                ),
                //
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      "It will help you to get better package",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.04),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: Obx(
                    // ignore: avoid_unnecessary_containers
                    () => Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Lose Weight",
                                style: TextStyle(
                                    color: ut.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textsize),
                              ),
                              //
                              Checkbox(
                                  value: _value.value,
                                  onChanged: _handleRadioValueChanged),
                            ],
                          ),
                          const Divider(
                            color: Colors.green,
                          ),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Get Fit",
                                style: TextStyle(
                                    color: ut.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textsize),
                              ),
                              //
                              Checkbox(
                                  value: _value.value,
                                  onChanged: _handleRadioValueChanged),
                            ],
                          ),
                          const Divider(
                            color: Colors.green,
                          ),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Gaining Muscle Mass",
                                style: TextStyle(
                                    color: ut.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textsize),
                              ),
                              //
                              Checkbox(
                                  value: _value.value,
                                  onChanged: _handleRadioValueChanged),
                            ],
                          ),
                          const Divider(
                            color: Colors.green,
                          ),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Improve Stretching",
                                style: TextStyle(
                                    color: ut.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textsize),
                              ),
                              //
                              Checkbox(
                                  value: _value.value,
                                  onChanged: _handleRadioValueChanged),
                            ],
                          ),
                          const Divider(
                            color: Colors.green,
                          ),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Be Healther",
                                style: TextStyle(
                                    color: ut.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textsize),
                              ),
                              //
                              Checkbox(
                                  value: _value.value,
                                  onChanged: _handleRadioValueChanged),
                            ],
                          ),
                          const Divider(
                            color: Colors.green,
                          ),
                          //
                        ],
                      ),
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
