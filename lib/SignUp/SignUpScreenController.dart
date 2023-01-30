import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart'as http;
class SignUpScreenController extends GetxController{

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  RxBool isHidepass = true.obs;
  var isHideconpass = true.obs;

  void SignUp()async{
    String? _firstname = firstname.text.toString();
    String _lastname = lastname.text.toString();
    String _email = email.text.toString();
    String _password = password.text.toString();
    String _conpassword = confirmpassword.text.toString();

    try{

      var response =await http.post(
        Uri.parse("https://www.learn2fitt.com/wp-json/wp/v2/users"),
          headers: {
            'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJhZG1pbiIsImlhdCI6MTY3NTA3NTg2MSwiZXhwIjoxODMyNzU1ODYxfQ.EdiIHqNip1Qhvp_kNZzEYJkvDWZcrpZ5Psb_q4zTxMw',
          },
        body: {
          "username":_firstname+_lastname,
          "email":_email,
          "password":_password
        }
      );
      print("method called");
      if(response.statusCode==201){

        var data = jsonDecode(response.body.toString());
        print(data);
        clearFileds();
        print("user created");
        Get.snackbar("","User Created Successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.grey.shade100,
        colorText: Colors.green);//print(_email);
      }
    }catch(e){
      print(e.toString()+"errorrrrrrrrrrrrrrrrrrrrrrrr");
      Get.snackbar("","SomeThing went wrong",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.grey,
          colorText: Colors.green);//print(_email);
    }

    }


    void clearFileds(){
    firstname.clear();
    lastname.clear();
    email.clear();
    password.clear();
    confirmpassword.clear();
    }
  }

