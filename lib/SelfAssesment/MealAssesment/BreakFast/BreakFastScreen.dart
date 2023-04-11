// ignore_for_file: must_be_immutable

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/utils.dart';

class BreakFastScreen extends StatelessWidget {
  BreakFastScreen({Key? key}) : super(key: key);

  Utils ut = Get.put(Utils());
  var textsize = Get.width * 0.045;

  @override
  Widget build(BuildContext context) {
    var isEat = "eat".obs;

    // ignore: avoid_unnecessary_containers
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.black,
                selectedTextColor: Colors.white,
                onDateChange: (date) {
                  // New date selected
                },
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Targets",
                  style: TextStyle(
                      color: ut.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: Get.width * 0.05),
                ),
              ),
            ),

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
                        "Milk",
                        style: TextStyle(
                            color: ut.textColor,
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
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                //height: Get.height * 0.07,

                decoration: BoxDecoration(
                    //color: Colors.orange,
                    border: Border.all(color: Colors.grey)),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Daal Chawal",
                        style: TextStyle(
                            color: ut.textColor,
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
                      //
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
                      const Text("No"),
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
