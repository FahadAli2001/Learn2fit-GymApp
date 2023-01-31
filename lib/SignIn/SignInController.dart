import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../Dashboard/Dashboard.dart';
import '../Payment/PaymentScreen.dart';
import '../Plans/PlansScreen.dart';

class signInController extends GetxController{



  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool isHidepass = true.obs;

  String? name;
  String? pas;

  var isrem = false.obs;
  void handleRadioValueChanged(val) {
  isrem.value = val;
   // print(isrem.value);
  }

  void SignIn()async{
    SharedPreferences sp = await SharedPreferences.getInstance() ;
    String _username = username.text.trim().toString();
    String _password = password.text.trim().toString();

    try{
     // print("try");
      var response =await http.post(
          Uri.parse("https://vekarealestate.technopreneurssoftware.com/wp-json/jwt-auth/v1/token"),
          body: {
            "username":_username,
            "password":_password
          }
      );
      if(response.statusCode==200){
       // print("method called");

        //var data = jsonDecode(response.body.toString());
       // checkRememberMe(_username,_password);
        if(isrem.value==true){
          SharedPreferences sp = await SharedPreferences.getInstance() ;
          name = await sp.setString('email', _username).toString();
          pas = sp.setString('password', _password).toString();
          Get.to(PlansScreen());
          print(sp.get("email"));
          print(sp.get("password"));
        } else{
          Get.to(PlansScreen());
        }


      }
      else{
        Get.snackbar("","Please check email and password",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.grey,
            colorText: Colors.black);
      }
    }catch(e){
      print(e.toString()+"errorrrrrrrrrrrrrrrrrrrrrrrr");
      Get.snackbar(e.toString(),"SomeThing went wrong",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.grey,
          colorText: Colors.black);
    }
  }


  void logout()async{
    SharedPreferences sp = await SharedPreferences.getInstance() ;
    sp.remove("email");
    sp.remove("password");
    print(sp.get("email"));
    print(sp.get("password"));
   // sp.remove("password");
    Get.offAll(Dashboard());
  }
}
