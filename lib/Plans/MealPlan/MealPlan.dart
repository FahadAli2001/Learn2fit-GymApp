// ignore_for_file: must_be_immutable

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
=======

import '../../Utils/utils.dart';
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32

class MealPlan extends StatelessWidget {
  MealPlan({Key? key}) : super(key: key);

  Utils ut = Get.put(Utils());

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Breakfast Diet Plan",
                  style: TextStyle(
                      color: ut.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: Get.width * 0.05),
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Before Breakfast | Today  ",
                      style: TextStyle(
                          color: Colors.green, fontSize: Get.width * 0.05),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "1 egg tow egggggggggggggggggggggggggggggggggggggggggg",
                        style: TextStyle(
<<<<<<< HEAD
                          color: Colors.black,
=======
                          color: ut.textColor,
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                          fontSize: Get.width * 0.04,
                        ),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            Align(
              alignment: Alignment.center,
              child: Text(
                "BreakFast Window",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.width * 0.05),
              ),
            ),
            //table
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              // ignore: sized_box_for_whitespace
              child: Container(
                width: Get.width,
                //color: Colors.orange,
                // height: 200,
<<<<<<< HEAD
=======
                // ignore: avoid_unnecessary_containers
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                child: Container(
                  child: Table(
                    //defaultColumnWidth: FixedColumnWidth(50),
                    border: TableBorder.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow(children: [
                        Column(children: const [
                          Text('Website', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Tutorial', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Review', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Review', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Review', style: TextStyle(fontSize: 20.0))
                        ]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Javatpoint')]),
                        Column(children: const [Text('Flutter')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Javatpoint')]),
                        Column(children: const [Text('MySQL')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Javatpoint')]),
                        Column(children: const [Text('ReactJS')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                      ]),
                    ],
                  ),
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Water Today ",
                      style: TextStyle(
                          color: Colors.green, fontSize: Get.width * 0.05),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "1 egg tow egggggggggggggggggggggggggggggggggggggggggg",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.width * 0.04,
                        ),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            Align(
              alignment: Alignment.center,
              child: Text(
                "Morning Snack Window",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.width * 0.05),
              ),
            ),
            //table
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: Get.width,
                //color: Colors.orange,
                // height: 200,
                child: Container(
                  child: Table(
                    //defaultColumnWidth: FixedColumnWidth(50),
                    border: TableBorder.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow(children: [
                        Column(children: const [
                          Text('Website', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Tutorial', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Review', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Review', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Review', style: TextStyle(fontSize: 20.0))
                        ]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Javatpoint')]),
                        Column(children: const [Text('Flutter')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Javatpoint')]),
                        Column(children: const [Text('MySQL')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Javatpoint')]),
                        Column(children: const [Text('ReactJS')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                        Column(children: const [Text('5*')]),
                      ]),
                    ],
                  ),
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Supplement Today ",
                      style: TextStyle(
                          color: Colors.green, fontSize: Get.width * 0.05),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "1 egg tow egggggggggggggggggggggggggggggggggggggggggg",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.width * 0.04,
                        ),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
