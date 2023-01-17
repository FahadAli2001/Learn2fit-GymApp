import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isCoupon = false.obs;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(CupertinoIcons.back),
            color: Colors.black,
          ),
          centerTitle: true,
          title: Text("Payment Info",
          style: TextStyle(
            color: Colors.black
          ),),
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 8),
            child: CupertinoButton(
              color: Colors.green,
              onPressed: (){},
              child: Text("Pay",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                   // fontSize: Get.width * 0.06
                ),),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("Package Details",
                    style: TextStyle(
                        color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: Get.width * 0.06
                    ),),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: Get.width,
                  color: Colors.green,
                  margin: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Package Name",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.05
                                ),),
                            ),
                            //
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("2 month transformation",
                                style: TextStyle(
                                    color: Colors.white,
                                   // fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.04
                                ),),
                            ),
                          ],
                        ),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Amount",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.05
                                ),),
                            ),
                            //
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("200",
                                style: TextStyle(
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.04
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("Card Details",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.06
                    ),),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
                child: TextField(
                  decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "0321 xxxxxxx",
                    labelText: "Mobile-No"
                  )
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
                child: TextField(
                    decoration:InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "xxxxxxxxxxxxxxxx",
                        labelText: "Card-No"
                    )
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
                child: TextField(
                    decoration:InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "xxxxxxxxxxxxxxxx",
                        labelText: "Cvc-No"
                    )
                ),
              ),
              //
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: TextButton(
                    onPressed: (){
                      isCoupon.value = true;

                      //isCoupon.value = false;
                    },
                    child: Text("have a coupon?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.04
                    ),),
                ),
              ),
              ),
              //
              Obx(() => (isCoupon.value == false)?Container():Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
                child: TextField(
                    decoration:InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "xxxxxxxxxxxxxxxx",
                        labelText: "Coupon-Code"
                    )
                ),
              ))
              //

            ],
          ),
        ),
      ),
    );
  }
}