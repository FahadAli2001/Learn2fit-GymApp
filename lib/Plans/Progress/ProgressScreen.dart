import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
=======

import '../../Utils/utils.dart';
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32

// ignore: must_be_immutable
class ProgresScreen extends StatelessWidget {
  ProgresScreen({Key? key}) : super(key: key);

  Utils ut = Get.put(Utils());

  var weightlist = [
    '1',
    '2',
    '3',
    '4',
  ];

  @override
  Widget build(BuildContext context) {
    var weight = '1'.obs;
<<<<<<< HEAD
    var weightlist = [
      '1',
      '2',
      '3',
      '4',
    ];

=======
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
    void selectedweight(String value) {
      weight.value = value;
    }

<<<<<<< HEAD
=======
    // ignore: avoid_unnecessary_containers
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DatePicker(
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.black,
              selectedTextColor: Colors.white,
              onDateChange: (date) {
                // New date selected
              },
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Body Measurement",
                  style: TextStyle(
<<<<<<< HEAD
                    color: Colors.black,
=======
                    color: ut.textColor,
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                    fontWeight: FontWeight.bold,
                    fontSize: Get.width * 0.045,
                  ),
                ),
              ),
            ),
            //
            Container(
                width: Get.width,
                height: Get.height * 0.4,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Body Weight",
                          style: TextStyle(
<<<<<<< HEAD
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.04),
                        ),
=======
                              color: ut.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.04),
                        ),
                        // ignore: sized_box_for_whitespace
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                        Obx(() => Container(
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: DropdownButton(
                                      value: weight.value,
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                      ),
                                      items: weightlist.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      onChanged: (val) {
                                        selectedweight(val.toString());
                                      }),
                                ),
                              ),
                            ))
                      ],
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
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.04),
                        ),
<<<<<<< HEAD
=======
                        // ignore: sized_box_for_whitespace
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                        Obx(() => Container(
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: DropdownButton(
                                      value: weight.value,
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                      ),
                                      items: weightlist.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      onChanged: (val) {
                                        selectedweight(val.toString());
                                      }),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Arm Size",
                          style: TextStyle(
<<<<<<< HEAD
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.04),
                        ),
=======
                              color: ut.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.04),
                        ),
                        // ignore: sized_box_for_whitespace
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                        Obx(() => Container(
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: DropdownButton(
                                      value: weight.value,
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                      ),
                                      items: weightlist.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      onChanged: (val) {
                                        selectedweight(val.toString());
                                      }),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ])),
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CupertinoButton(
<<<<<<< HEAD
                    color: Colors.green, child: Text("Done"), onPressed: () {}),
=======
                    color: Colors.green,
                    child: const Text("Done"),
                    onPressed: () {}),
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
              ),
            )
          ],
        ),
      ),
    );
  }
}
