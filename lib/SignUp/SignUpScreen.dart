import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn2fit/SignIn/SignInScreen.dart';

import 'SignUpScreenController.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpScreenController sucontroller = Get.put(SignUpScreenController());
    final _formKey = GlobalKey<FormState>();
    var width = Get.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        leading: IconButton(onPressed: (){
          Get.back();
        },
            icon: Icon(CupertinoIcons.back,color: Colors.black,)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("SIGN-UP",style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.08
                    ),),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: TextFormField(
                    controller: sucontroller.username,
                      style: TextStyle(
                          height: 0.5
                      ),
                      decoration: InputDecoration(
                        errorStyle: TextStyle(
                          color: Colors.red
                        ),
                          hintText: "User Name",
                          labelText: "User Name",
                          labelStyle: TextStyle(
                            color: Colors.green
                          ),
                          suffixIcon: Icon(CupertinoIcons.person_alt,
                          color: Colors.green,),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)
                          ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        focusColor: Colors.green
                      ),

                    validator: (val){
                      if(val!.isEmpty){
                        return "Please enter first name";
                      }
                    },
                  ),
                ),
                //

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: TextFormField(
                    validator: (val){
                     /* if(val!= EmailValidator.validate(val.toString())){
                        return "Enter valid email";
                      }*/
                      if(val == ""){
                        return "Enter email";
                      }
                    },
                    controller: sucontroller.email,
                      style: TextStyle(
                          height: 0.5
                      ),
                      decoration: InputDecoration(
                          errorStyle: TextStyle(
                              color: Colors.red
                          ),
                          labelStyle: TextStyle(
                              color: Colors.green
                          ),
                          hintText: "Email",
                          labelText: "Email",
                          suffixIcon: Icon(CupertinoIcons.mail,
                          color: Colors.green,),
                          border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          ),
                          focusColor: Colors.green
                      ),
                  ),

                ),
                //
                Obx(
                    ()=> Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: TextFormField(
                      obscureText: sucontroller.isHidepass.value,
                      validator: (String? val){
                        if(val!.isEmpty){
                          return "Enter password";
                        }else if (val!.length < 8){
                          return "Enter mini 8 digit password";
                        }
                      },
                      controller: sucontroller.password,
                        style: TextStyle(
                            height: 0.5
                        ),
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                                color: Colors.red
                            ),
                            labelStyle: TextStyle(
                                color: Colors.green
                            ),
                            hintText: "Password",
                            labelText: "Password",
                            suffixIcon: GestureDetector(
                              onTap: (){
                                if(sucontroller.isHidepass.value == true){
                                  sucontroller.isHidepass.value = false;
                                }else{
                                  sucontroller.isHidepass.value = true;
                                }
                              },
                              child: (sucontroller.isHidepass.value == true)?Icon(CupertinoIcons.eye_slash_fill,
                                color: Colors.green,
                              ):Icon(CupertinoIcons.eye,
                              color: Colors.green,)
                            ),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)
                            ),
                            focusColor: Colors.green
                        )
                    ),
                  ),
                ),
                //
                //
                Obx(
                    ()=> Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: TextFormField(
                      validator: (val){
                        if(val!.isEmpty){
                          return "Enter password";
                        }
                        else if(sucontroller.password.value != sucontroller.confirmpassword.value) {
                          return "Password doesn't match";
                        }
                      },
                        obscureText: sucontroller.isHideconpass.value,
                      controller: sucontroller.confirmpassword,
                        style: TextStyle(
                            height: 0.5
                        ),
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                                color: Colors.red
                            ),
                            labelStyle: TextStyle(
                                color: Colors.green
                            ),

                            hintText: "Confirm Password",
                            labelText: "Confirm Password",
                            suffixIcon: GestureDetector(
                              onTap: (){
                                if(sucontroller.isHideconpass.value == true){
                                  sucontroller.isHideconpass.value = false;
                                }else{
                                  sucontroller.isHideconpass.value = true;
                                }
                              },
                              child:(sucontroller.isHideconpass.value == true)?Icon(CupertinoIcons.eye_slash_fill,
                                color: Colors.green,
                              ):Icon(CupertinoIcons.eye,
                                color: Colors.green,)
                            ),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)
                            ),
                            focusColor: Colors.green
                        )
                    ),
                  ),
                ),
                //
                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                  child: SizedBox(
                    width: Get.width,
                    child: CupertinoButton(
                        color: Colors.green,
                        child: Text("Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.05
                          ),),
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            sucontroller.SignUp();
                            print("tap");
                          }
                        }),
                  ),
                ),
                //

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: InkWell(
                      onTap: (){
                        Get.to(SignInScreen());
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Already Have An Account? ",
                          style: TextStyle(
                              fontSize: width * 0.04,
                              color: Colors.grey
                          ),
                          children: const <TextSpan>[
                            TextSpan(text: 'Sign In', style:
                            TextStyle(fontWeight: FontWeight.bold,
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
