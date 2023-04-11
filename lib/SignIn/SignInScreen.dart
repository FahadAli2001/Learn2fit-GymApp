import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../SignUp/SignUpScreen.dart';
import '../Utils/utils.dart';
import 'SignInController.dart';

// ignore: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  signInController sicontroller = Get.put(signInController());
  final _formKey = GlobalKey<FormState>();
  var width = Get.width;
  // ignore: non_constant_identifier_names
  var SocialAppIconSize = Get.height * 0.03;

  Utils ut = Get.put(Utils());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              CupertinoIcons.back,
              color: ut.black,
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "SIGN-IN",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.08),
                    ),
                  ),
                ),
                //
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextFormField(
                    controller: sicontroller.username,
                    validator: (val) {
                      if (val == "") {
                        return "Enter user-name";
                      }
                    },
                    style: const TextStyle(height: 0.5),
                    decoration: const InputDecoration(
                        errorStyle: TextStyle(color: Colors.red),
                        labelStyle: TextStyle(color: Colors.green),
                        hintText: "User Name",
                        labelText: "User Name",
                        suffixIcon: Icon(
                          CupertinoIcons.mail,
                          color: Colors.green,
                        ),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        focusColor: Colors.green),
                  ),
                ),
                //
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: TextFormField(
                        controller: sicontroller.password,
                        obscureText: sicontroller.isHidepass.value,
                        validator: (String? val) {
                          if (val!.isEmpty) {
                            return "Enter password";
                          } else if (val!.length < 8) {
                            return "Enter mini 8 digit password";
                          }
                        },
                        style: const TextStyle(height: 0.5),
                        decoration: InputDecoration(
                            errorStyle: const TextStyle(color: Colors.red),
                            labelStyle: const TextStyle(color: Colors.green),
                            hintText: "Password",
                            labelText: "Password",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                if (sicontroller.isHidepass.value == true) {
                                  sicontroller.isHidepass.value = false;
                                } else {
                                  sicontroller.isHidepass.value = true;
                                }
                              },
                              child: (sicontroller.isHidepass.value == true)
                                  ? const Icon(
                                      CupertinoIcons.eye_slash_fill,
                                      color: Colors.green,
                                    )
                                  : const Icon(
                                      CupertinoIcons.eye,
                                      color: Colors.green,
                                    ),
                            ),
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)),
                            focusColor: Colors.green)),
                  ),
                ),
                //
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: Get.height * 0.06,
                      width: Get.width,
                      //color: Colors.red,
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: Colors.green,
                              value: sicontroller.isrem.value,
                              onChanged:
                                  sicontroller.handleRadioValueChanged), //Ch
                          Text(
                            "Remember me",
                            style: TextStyle(fontSize: width * 0.04),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: TextButton(
                                onPressed: () {
                                  // print("object");
                                },
                                child: const Text(
                                  "Forget Password?",
                                  style: TextStyle(color: Colors.grey),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                //
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  child: SizedBox(
                    width: Get.width,
                    child: CupertinoButton(
                        color: Colors.green,
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print("tapp");
                            sicontroller.SignIn();
                          }
                        }),
                  ),
                ),
                //
                //
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: InkWell(
                      onTap: () {
                        Get.to(SignUpScreen());
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Don't Have An Account? ",
                          style: TextStyle(
                              fontSize: width * 0.04, color: Colors.grey),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )),
                          ],
                        ),
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
