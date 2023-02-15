import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Payment/PaymentScreen.dart';
import '../SignIn/SignInScreen.dart';
import 'TransformPackageController.dart';

class transformPackages extends StatelessWidget {
  const transformPackages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TransformPackageController tpc = Get.put(TransformPackageController());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: FutureBuilder(
            future: tpc.getAllPackages(),
            builder: (context,snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.green,
                  ),
                );
              }
              if(snapshot.hasError){
                print("${snapshot.error} error");
              }
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Start Your Transformation",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.06
                          ),),
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: Get.width,
                          // height: Get.height * 0.55,
                          //
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              border: Border.all(
                                  color: Colors.grey
                              )
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: Get.width,
                                height:  Get.height * 0.06,
                                color: Colors.green,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: Center(
                                    child: AutoSizeText(tpc.package[0]["name"],
                                      maxLines: 2,
                                      softWrap: true,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: Get.width * 0.05
                                      ),),
                                  ),
                                ),
                              ),
                              //

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Center(
                                  child: AutoSizeText("Rs ${tpc.package[0]["price"].toString()}",
                                    maxLines: 1,
                                    softWrap: true,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Get.width * 0.065
                                    ),),
                                ),
                              ),
                              //
                              for(var i =0 ; i < tpc.DietPlan.length ; i++)...[
                                Container(
                                  //color: Colors.pinkAccent,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                         Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                                         child:  Icon(
                                           Icons.check,
                                           color: Colors.green,
                                           size: 25,
                                         ),),
                                           Expanded(
                                             child: Text(
                                              tpc.DietPlan[i],
                                              softWrap: true,
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: Get.width * 0.03),
                                          ),
                                           ),
                                          //
                                        ],
                                      ),
                                      //
                                      Divider(color: Colors.green,)
                                    ],
                                  ),
                                ),
                              ],
                              //
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CupertinoButton(
                                    color: Colors.green,
                                    child: Text("Take This Plan",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),),
                                    onPressed: (){}),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: Get.width,
                          // height: Get.height * 0.55,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              border: Border.all(
                                  color: Colors.grey
                              )
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: Get.width,
                                height:  Get.height * 0.06,
                                color: Colors.green,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 50),
                                    child: AutoSizeText(tpc.package[1]["name"],
                                      maxLines: 2,
                                      softWrap: true,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: Get.width * 0.05
                                      ),),
                                  ),
                                ),
                              ),
                              //

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Center(
                                  child: AutoSizeText("Rs ${tpc.package[1]["price"].toString()}",
                                    maxLines: 1,
                                    softWrap: true,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Get.width * 0.065
                                    ),),
                                ),
                              ),
                              //
                              for(var i =0 ; i < tpc.Nutrition.length ; i++)...[
                                Container(
                                  //color: Colors.pinkAccent,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                                            child:  Icon(
                                              Icons.check,
                                              color: Colors.green,
                                              size: 25,
                                            ),),
                                          Expanded(
                                            child: Text(
                                              tpc.Nutrition[i],
                                              softWrap: true,
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: Get.width * 0.03),
                                            ),
                                          ),
                                          //
                                        ],
                                      ),
                                      //
                                      Divider(color: Colors.green,)
                                    ],
                                  ),
                                ),
                              ],
                              //
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CupertinoButton(
                                    color: Colors.green,
                                    child: Text("Take This Plan",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),),
                                    onPressed: (){}),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: Get.width,
                          // height: Get.height * 0.55,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              border: Border.all(
                                  color: Colors.grey
                              )
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: Get.width,
                                height:  Get.height * 0.06,
                                color: Colors.green,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 50),
                                    child: AutoSizeText(tpc.package[2]["name"],
                                      maxLines: 2,
                                      softWrap: true,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: Get.width * 0.05
                                      ),),
                                  ),
                                ),
                              ),
                              //

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Center(
                                  child: AutoSizeText("Rs ${tpc.package[2]["price"].toString()}",
                                    maxLines: 1,
                                    softWrap: true,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Get.width * 0.065
                                    ),),
                                ),
                              ),
                              //
                              for(var i =0 ; i < tpc.twoMonths.length ; i++)...[
                                Container(
                                  //color: Colors.pinkAccent,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                                            child:  Icon(
                                              Icons.check,
                                              color: Colors.green,
                                              size: 25,
                                            ),),
                                          Expanded(
                                            child: Text(
                                              tpc.twoMonths[i],
                                              softWrap: true,
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: Get.width * 0.03),
                                            ),
                                          ),
                                          //
                                        ],
                                      ),
                                      //
                                      Divider(color: Colors.green,)
                                    ],
                                  ),
                                ),
                              ],
                              //
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CupertinoButton(
                                    color: Colors.green,
                                    child: Text("Take This Plan",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),),
                                    onPressed: (){}),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              );
            },
          ),
        )
      ),
    );
  }
}
