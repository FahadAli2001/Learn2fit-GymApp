import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Dashboard/Dashboard.dart';
import '../Payment/PaymentScreen.dart';
import '../SignUp/SignUpScreen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    var width = Get.width;
    var SocialAppIconSize = Get.height * 0.03;
    var _value = false.obs;
    void _handleRadioValueChanged(val) {
      _value.value = val;
    }
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
                SizedBox(height: 100,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("SIGN-IN",style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: Get.width * 0.08
                    ),),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "User Id",
                          labelText: "User Id",
                          suffixIcon: Icon(CupertinoIcons.mail),
                          border: OutlineInputBorder()
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                          suffixIcon: Icon(CupertinoIcons.eye_slash_fill),
                          border: OutlineInputBorder()
                      )
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: Get.height * 0.06,
                    width: Get.width,
                    //color: Colors.red,
                    child: Obx(() => Row(
                      children: [

                        Checkbox(
                            value: _value.value,
                            onChanged: _handleRadioValueChanged
                        ), //Ch
                        Text("Remember me",
                          style: TextStyle(
                              fontSize: width * 0.04
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: TextButton(onPressed: (){},
                              child: Text("Forget Password?",
                              style: TextStyle(
                                color: Colors.grey
                              ),)),
                        )

                      ],
                    ),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                  child: SizedBox(
                    width: Get.width,
                    child: CupertinoButton(
                        color: Colors.green,
                        child: Text("Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.05
                          ),),
                        onPressed: (){
                          Get.to(PaymentScreen());
                        }),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                  child: Row(
                    children: [
                        Expanded(child: Divider(color: Colors.grey,)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("or",
                        style: TextStyle(
                          color: Colors.grey
                        ),),
                      ),
                      Expanded(child: Divider(color: Colors.grey,)),
                    ],
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 118),
                  child: Container(
                    width: Get.width,
                    //height: 100,
                    //color: Colors.pink,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(FontAwesomeIcons.facebook,
                          color: Colors.grey,
                          size: SocialAppIconSize,),
                        FaIcon(FontAwesomeIcons.instagram,
                          color: Colors.grey,
                          size: SocialAppIconSize,),
                        FaIcon(FontAwesomeIcons.twitter,
                          color: Colors.grey,
                          size: SocialAppIconSize,),
                      ],
                    ),
                  ),
                ),
                //
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: InkWell(
                      onTap: (){
                        Get.to(SignUpScreen());
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Don't Have An Account? ",
                          style: TextStyle(
                              fontSize: width * 0.04,
                              color: Colors.grey
                          ),
                          children: const <TextSpan>[
                            TextSpan(text: 'Sign Up', style:
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
