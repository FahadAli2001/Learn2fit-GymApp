import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color btncolor = Colors.black;
    var btnwidth = Get.width * 0.04;
    return SafeArea(child: Scaffold(
      appBar: AppBar(

        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(CupertinoIcons.back,color: Colors.black,)),
        elevation: 0,
        backgroundColor: Colors.white70,
        title: Text("Settings",
        style: TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
      ),

      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 8),
          child: CupertinoButton(
            color: Colors.green,
            onPressed: (){

            },
            child: Text("Log-Out",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                // fontSize: Get.width * 0.06
              ),),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Personal Info",
                        style: TextStyle(
                            color: btncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth
                        ),),
                      //
                      Icon(CupertinoIcons.forward,
                      color: Colors.black,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Divider(color: Colors.green,),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Contact Info",
                        style: TextStyle(
                            color: btncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth
                        ),),
                      //
                      Icon(CupertinoIcons.forward,
                        color: Colors.black,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Divider(color: Colors.green,),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Social Info",
                        style: TextStyle(
                            color: btncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth
                        ),),
                      //
                      Icon(CupertinoIcons.forward,
                        color: Colors.black,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Divider(color: Colors.green,),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Goals and Preferences",
                        style: TextStyle(
                            color: btncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth
                        ),),
                      //
                      Icon(CupertinoIcons.forward,
                        color: Colors.black,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Divider(color: Colors.green,),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Password Reset",
                        style: TextStyle(
                            color: btncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth
                        ),),
                      //
                      Icon(CupertinoIcons.forward,
                        color: Colors.black,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Divider(color: Colors.green,),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Privacy Controls",
                        style: TextStyle(
                            color: btncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth
                        ),),
                      //
                      Icon(CupertinoIcons.forward,
                        color: Colors.black,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Divider(color: Colors.green,),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Account Setting",
                        style: TextStyle(
                            color: btncolor,
                            fontWeight: FontWeight.bold,
                            fontSize: btnwidth
                        ),),
                      //
                      Icon(CupertinoIcons.forward,
                        color: Colors.black,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Divider(color: Colors.green,),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
