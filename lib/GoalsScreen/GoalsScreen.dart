import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../UserData/UserDataScreen.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textsize = Get.width * 0.04;
    var _value = false.obs;
    void _handleRadioValueChanged(val) {
      _value.value = val;
    }
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 8),
            child: CupertinoButton(
              color: Colors.green,
              onPressed: (){
                Get.to(UserDataScreen());
              },
              child: Text("Next",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  // fontSize: Get.width * 0.06
                ),),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text("Your Goals",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.06
                      ),),
                  ),
                ),
                //
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text("It will help you to get better package",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.04
                      ),),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100 ),
                  child: Obx(()=>
                     Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Lose Weight",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textsize
                                ),),
                              //
                              Checkbox(
                                  value: _value.value,
                                  onChanged: _handleRadioValueChanged
                              ),
                            ],
                          ),
                          Divider(color: Colors.green,),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Get Fit",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textsize
                                ),),
                              //
                              Checkbox(
                                  value: _value.value,
                                  onChanged: _handleRadioValueChanged
                              ),
                            ],
                          ),
                          Divider(color: Colors.green,),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Gaining Muscle Mass",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textsize
                                ),),
                              //
                              Checkbox(
                                  value: _value.value,
                                  onChanged: _handleRadioValueChanged
                              ),
                            ],
                          ),
                          Divider(color: Colors.green,),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Improve Stretching",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textsize
                                ),),
                              //
                              Checkbox(
                                  value: _value.value,
                                  onChanged: _handleRadioValueChanged
                              ),
                            ],
                          ),
                          Divider(color: Colors.green,),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Be Healther",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textsize
                                ),),
                              //
                              Checkbox(
                                  value: _value.value,
                                  onChanged: _handleRadioValueChanged
                              ),
                            ],
                          ),
                          Divider(color: Colors.green,),
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
