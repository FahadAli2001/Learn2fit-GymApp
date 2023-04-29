import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class SignUpScreenController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  RxBool isHidepass = true.obs;
  var isHideconpass = true.obs;

  // ignore: non_constant_identifier_names
  void SignUp() async {
    String _username = username.text.toString();
    String _email = email.text.toString();
    String _password = password.text.toString();
    String _conpassword = confirmpassword.text.toString();

    try {
      var response = await http.post(
          Uri.parse("https://www.learn2fitt.com/wp-json/wp/v2/users"),
          headers: {
            'Authorization':
                'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3d3dy5sZWFybjJmaXR0LmNvbSIsImlhdCI6MTY3NTE1ODY0OCwibmJmIjoxNjc1MTU4NjQ4LCJleHAiOjE2NzU3NjM0NDgsImRhdGEiOnsidXNlciI6eyJpZCI6MSwiZGV2aWNlIjoiIiwicGFzcyI6IjkzNTdmZGI1NDgxYzA1OTBmZTViMDYyZmVkYWQ2OTYwIn19fQ.wF-k41ACA6-rb3xwUeo42FfTz2ap7dvSTiYheG9KfJU',
          },
          body: {
            "username": _username,
            "email": _email,
            "password": _password
          });

      if (response.statusCode == 201) {
        log("method called");
        var data = jsonDecode(response.body.toString());
        //print(data);
        clearFileds();
        print("user created");
        Get.snackbar("", "User Created Successfully",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.grey,
            colorText: Colors.black); //print(_email);
      } else {
        print("object");
      }
    } catch (e) {
      print(e.toString() + "errorrrrrrrrrrrrrrrrrrrrrrrr");
      Get.snackbar("", "SomeThing went wrong",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.grey,
          colorText: Colors.black); //print(_email);
    }
  }

  void clearFileds() {
    username.clear();
    email.clear();
    password.clear();
    confirmpassword.clear();
  }
}
