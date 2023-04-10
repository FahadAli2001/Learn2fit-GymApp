import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatWithCoach extends StatelessWidget {
  const ChatWithCoach({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(
          CupertinoIcons.text_bubble_fill,
          color: Colors.white,
        ),
        onPressed: () {
          Get.defaultDialog(
              title: "Hey Listen",
              middleText: "First Purchased your package",
              confirm: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text("ok"),
                ),
              ));
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "CHAT WITH YOUR COACH",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: Get.width * 0.06),
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                width: Get.width,
                height: Get.height * 0.2,
                child: Center(
                  child: Icon(
                    CupertinoIcons.doc_chart_fill,
                    color: Colors.grey,
                    size: Get.height * 0.05,
                  ),
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Omair Arfeen",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: Get.width * 0.055),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
