import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../ClassTimimgs/ClassTimings.dart';

class PysicalInformation extends StatelessWidget {
  const PysicalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = 1.obs;
    var weight = 1.obs;
    var target_weight = 1.obs;
    var waist_size = 10.obs;
    var textsize =Get.width* 0.045;
    return SafeArea(child:
    Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: Text("Physical Information",
          style: TextStyle(
              color: Colors.black
          ),),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 8),
          child: CupertinoButton(
            color: Colors.green,
            onPressed: (){
              Get.to(ClassTimings());
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
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Height",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: textsize
                        ),),
                      //
                      Obx(
                            ()=> Text(height.value.toString() + " " + "cm",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: textsize
                          ),),
                      ),
                    ],
                  )
              ),
              //
              Obx(
                    ()=> Slider(
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
                      Text("Weight",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: textsize
                        ),),
                      //
                      Obx(
                            ()=> Text(weight.value.toString() + " " + "kg",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: textsize
                          ),),
                      ),
                    ],
                  )
              ),
              //
              Obx(
                    ()=> Slider(
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
                      Text("Target Weight",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: textsize
                        ),),
                      //
                      Obx(
                            ()=> Text(target_weight.value.toString() + " " + "kg",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: textsize
                          ),),
                      ),
                    ],
                  )
              ),
              //
              Obx(
                    ()=> Slider(
                  value: target_weight.value.toDouble(),
                  min: 1,
                  max: 310,
                  divisions: 310,
                  label: '$target_weight',
                  onChanged: (double newValue) {
                    target_weight.value = newValue.toInt();
                  },
                ),
              ),
              //
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Waist Size",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: textsize
                        ),),
                      //
                      Obx(
                            ()=> Text(waist_size.value.toString() + " " + "cm",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: textsize
                          ),),
                      ),
                    ],
                  )
              ),
              //
              Obx(
                    ()=> Slider(
                  value: waist_size.value.toDouble(),
                  min: 1,
                  max: 150,
                  divisions: 150,
                  label: '$waist_size',
                  onChanged: (double newValue) {
                    waist_size.value = newValue.toInt();
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
