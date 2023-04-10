import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';

import '../PhysicalInformation/PysicalInformation.dart';

// ignore: must_be_immutable
class UserDataScreen extends StatelessWidget {
  UserDataScreen({Key? key}) : super(key: key);

  var religionValues = [
    'Muslim',
    'Christian',
    'Non-religious',
    'Hindu',
    'Buddhist',
    'Other religion',
  ];

  @override
  Widget build(BuildContext context) {
    var _age = 1.obs;
    var religion = 'Muslim'.obs;

    void selectedReligion(String value) {
      religion.value = value;
    }

    var profession = 'Student'.obs;
    var professions = [
      'Student',
      'Office Going',
      'House Wife',
      'Other',
    ];

    void selectedprofession(String value) {
      profession.value = value;
    }

    var textsize = Get.width * 0.045;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: const Text(
          "Personal Information",
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
              Get.to(PysicalInformation());
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(height: 0.5),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name",
                    labelText: "Name"),
              ),
            ),
            //
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(height: 0.5),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Mobile Number",
                    labelText: "Mobile No"),
              ),
            ),
            //
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: textsize),
                    ),
                    //
                    Obx(
                      () => Text(
                        _age.value.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: Get.width * 0.05),
                      ),
                    ),
                  ],
                )),
            //
            Obx(
              () => Slider(
                value: _age.value.toDouble(),
                min: 1,
                max: 100,
                divisions: 100,
                label: '$_age',
                onChanged: (double newValue) {
                  _age.value = newValue.toInt();
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
                    "Date Of Birth",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: textsize),
                  ),
                  //
                  TimePickerSpinnerPopUp(
                    mode: CupertinoDatePickerMode.date,
                    initTime: DateTime.now(),
                    minTime: DateTime.now().subtract(const Duration(days: 10)),
                    maxTime: DateTime.now().add(const Duration(days: 10)),
                    barrierColor:
                        Colors.black12, //Barrier Color when pop up show
                    onChange: (dateTime) {},
                  )
                ],
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Religion",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: textsize),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                child: Obx(
                  () => Container(
                    color: Colors.grey.shade100,
                    width: Get.width / 0.2,
                    height: Get.height * 0.07,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                          value: religion.value,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                          items: religionValues.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (val) {
                            selectedReligion(val.toString());
                          }),
                    ),
                  ),
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Profession",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: textsize),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                child: Obx(
                  () => Container(
                    color: Colors.grey.shade100,
                    width: Get.width / 0.2,
                    height: Get.height * 0.07,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                          value: profession.value,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                          items: professions.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (val) {
                            selectedprofession(val.toString());
                          }),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
