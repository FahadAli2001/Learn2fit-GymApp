import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learn2fit/startingScreen.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child:Container(
                  width: Get.width * 0.5,
                  height: Get.height * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(image:
                    AssetImage("assets/logo.png"),fit: BoxFit.fill),
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ) /*(
                  backgroundColor: Colors.black,
                  radius: 100,
                  backgroundImage: AssetImage("assets/logo.png"),
                ),*/
              ),
              //--------
              //SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Welcome to ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: Get.width * 0.08
                      ),
                      children: [
                        TextSpan(
                          text: "Learn2fitt",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: Get.width * 0.08
                          )
                        )
                      ]
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Text("Welcome to our home! Glad to have you back! Your visits mean a lot to us, and we want you to know that you bring joy to our family. Greetings with joy! We are delighted to have you, and we hope you will have a great stay with us!",
              style: TextStyle(
                color: Colors.grey,
                fontSize: Get.width * 0.04
              ),),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 15),
                child: CupertinoButton(
                  onPressed: (){
                    Get.to(startingScreen());
                  },
                  color: Colors.green,
                  child: Center(
                    child: Text("Get Started",
                    style: TextStyle(
                      color: Colors.black
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
