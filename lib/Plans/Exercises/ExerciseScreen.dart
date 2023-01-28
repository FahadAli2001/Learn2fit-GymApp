import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return SafeArea(child:
    Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        leading: IconButton(onPressed: (){
          Get.back();
        },
            icon: Icon(CupertinoIcons.back),
        color: Colors.black,),
        title: Text("Day ${data['dayvalue']}",style: TextStyle(
          color: Colors.black
        ),),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  image: DecorationImage(image: AssetImage("assets/logo.JPG"),
                  fit: BoxFit.fill)
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row
                  (
                  children: [
                    Container(
                      width: Get.width * 0.25,
                      height: Get.height * 0.11,

                      decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(image: AssetImage("assets/f.png"),
                        fit: BoxFit.fill)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Jumping Jack",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: Get.width * 0.045
                        ),),
                      ),
                    )
                  ],
                ),
              ),
              //
              Divider(
                color: Colors.green,
              )
            ],
          ),
        ),
      ) ,
    )
    );
  }
}
