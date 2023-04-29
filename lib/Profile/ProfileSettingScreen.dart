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
<<<<<<< HEAD
    signInController signController = Get.put(signInController());
    Color btncolor = Colors.black;
    var btnwidth = Get.width * 0.04;
=======
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
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
<<<<<<< HEAD
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
=======
        title: Text(
          "Settings",
          style: TextStyle(color: ut.textColor),
        ),
        centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
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
<<<<<<< HEAD
                child: SizedBox(
=======
                // ignore: avoid_unnecessary_containers
                child: Container(
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
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
<<<<<<< HEAD
=======
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
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
<<<<<<< HEAD
                        "Contact Info",
=======
                        "Social Info",
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
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
<<<<<<< HEAD
                        "Social Info",
=======
                        "Goals and Preferences",
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
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
<<<<<<< HEAD
                        "Goals and Preferences",
=======
                        "Password Reset",
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
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
<<<<<<< HEAD
                        "Password Reset",
=======
                        "Privacy Controls",
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
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
<<<<<<< HEAD
                        "Privacy Controls",
=======
                        "Account Setting",
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
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
<<<<<<< HEAD
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
                        "Account Setting",
                        style: TextStyle(
                            color: btncolor,
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
=======
                ),
              ),
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
            ],
          ),
        ),
      ),
    ));
  }
}
