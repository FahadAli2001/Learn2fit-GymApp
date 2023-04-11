import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../SignIn/SignInController.dart';
import '../Utils/utils.dart';

// ignore: must_be_immutable
class ProfileSettingScreen extends StatelessWidget {
  ProfileSettingScreen({Key? key}) : super(key: key);

  signInController signController = Get.put(signInController());

  var btnwidth = Get.width * 0.04;
  Utils ut = Get.put(Utils());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Colors.white70,
        title: Text(
          "Settings",
          style: TextStyle(color: ut.textColor),
        ),
        centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
          child: CupertinoButton(
            color: Colors.green,
            onPressed: () {
              signController.logout();
            },
            child: const Text(
              "Log-Out",
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
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Personal Info",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth),
                      ),
                      //
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(4),
                child: Divider(
                  color: Colors.green,
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Contact Info",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth),
                      ),
                      //
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(4),
                child: Divider(
                  color: Colors.green,
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Social Info",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth),
                      ),
                      //
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(4),
                child: Divider(
                  color: Colors.green,
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Goals and Preferences",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth),
                      ),
                      //
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(4),
                child: Divider(
                  color: Colors.green,
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Password Reset",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth),
                      ),
                      //
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(4),
                child: Divider(
                  color: Colors.green,
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Privacy Controls",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth),
                      ),
                      //
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(4),
                child: Divider(
                  color: Colors.green,
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Account Setting",
                        style: TextStyle(
                            color: ut.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth),
                      ),
                      //
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(4),
                child: Divider(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
