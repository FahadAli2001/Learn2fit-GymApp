import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types, must_be_immutable
class trainAssesment extends StatelessWidget {
  trainAssesment({Key? key}) : super(key: key);

  var textsize = Get.width * 0.045;

  @override
  Widget build(BuildContext context) {
    var isEat = "eat".obs;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(CupertinoIcons.back),
          color: Colors.black,
        ),
        title: const Text(
          "Training Assesment Plan",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  //color: Colors.orange,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Jumping Jack",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: textsize),
                        ),
                        Obx(
                          () => Radio(
                            value: "Yes",
                            groupValue: isEat.value,
                            onChanged: (val) {
                              isEat.value = val.toString();
                            },
                          ),
                        ),
                        const Text("Yes"),

                        //----------
                        Obx(
                          () => Radio(
                            value: "No",
                            groupValue: isEat.value,
                            onChanged: (val) {
                              isEat.value = val.toString();
                              //print(val.toString()+""+payment.value);
                            },
                          ),
                        ),
                        //
                        const Text("No")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
