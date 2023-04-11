// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal/flutter_paypal.dart';
import 'package:get/get.dart';

import '../GoalsScreen/GoalsScreen.dart';
import '../SignIn/SignInScreen.dart';
import '../SignUp/SignUpScreen.dart';
import '../Utils/utils.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);
  Utils ut = Get.put(Utils());

  @override
  Widget build(BuildContext context) {
    var payment = "cash".obs;

    var isCoupon = false.obs;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(CupertinoIcons.back),
            color: Colors.black,
          ),
          centerTitle: true,
          title: const Text(
            "Payment Info",
            style: TextStyle(color: Colors.black),
          ),
        ),
        // ignore: avoid_unnecessary_containers
        bottomNavigationBar: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            child: CupertinoButton(
              color: Colors.green,
              onPressed: () {
                Get.to(() => GoalsScreen());
              },
              child: const Text(
                "Pay",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  // fontSize: Get.width * 0.06
                ),
              ),
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
                  child: Text(
                    "Package Details",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.06),
                  ),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: Get.width,
                  color: Colors.green,
                  margin: const EdgeInsets.all(5),
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
                              child: Text(
                                "Package Name",
                                style: TextStyle(
                                    color: ut.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.05),
                              ),
                            ),
                            //
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "2 month transformation",
                                style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.04),
                              ),
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
                              child: Text(
                                "Amount",
                                style: TextStyle(
                                    color: ut.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.05),
                              ),
                            ),
                            //
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "200",
                                style: TextStyle(
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.04),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Customer Info",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.05),
                    ),
                    //
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Get.to(() => SignInScreen());
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.green),
                              )),
                          //
                          const Text(
                            "/",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          //
                          TextButton(
                              onPressed: () {
                                Get.to(() => SignUpScreen());
                              },
                              child: const Text(
                                "Signup",
                                style: TextStyle(color: Colors.green),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Card Details",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.05),
                  ),
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: TextField(
                    style: TextStyle(height: 0.5),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        focusColor: Colors.green,
                        labelStyle: TextStyle(color: Colors.green),
                        border: OutlineInputBorder(),
                        hintText: "0321 xxxxxxx",
                        labelText: "Mobile-No")),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: TextField(
                    style: TextStyle(height: 0.5),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        focusColor: Colors.green,
                        border: OutlineInputBorder(),
                        hintText: "xxxxxxxxxxxxxxxx",
                        labelText: "Card-No",
                        labelStyle: TextStyle(color: Colors.green))),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: TextField(
                    style: TextStyle(height: 0.5),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        focusColor: Colors.green,
                        labelStyle: TextStyle(color: Colors.green),
                        border: OutlineInputBorder(),
                        hintText: "xxxxxxxxxxxxxxxx",
                        labelText: "Cvc-No")),
              ),
              //
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: TextButton(
                    onPressed: () {
                      isCoupon.value = true;

                      //isCoupon.value = false;
                    },
                    child: Text(
                      "have a coupon?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.04),
                    ),
                  ),
                ),
              ),
              //
              Obx(() => (isCoupon.value == false)
                  ? Container()
                  : const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                      child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "xxxxxxxxxxxxxxxx",
                              labelText: "Coupon-Code")),
                    )),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "PAYMENT METHOD",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: Get.width * 0.06),
                ),
              ),
              //----
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Obx(
                  // ignore: sized_box_for_whitespace
                  () => Container(
                    height: Get.height * 0.06,
                    width: Get.width,
                    //color: Colors.red,
                    child: RadioListTile(
                      title: const Text("Direct Bank Transfer"),
                      value: "Direct Bank Transfer",
                      groupValue: payment.value,
                      onChanged: (val) async {
                        //await pcon.makePayment();

                        payment.value = val.toString();
                      },
                    ),
                  ),
                ),
              ),
              //
              Obx(() => (payment.value == "Direct Bank Transfer")
                  // ignore: avoid_unnecessary_containers
                  ? Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.",
                              style: TextStyle(color: Colors.black),
                              softWrap: true,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container()),

              //----------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Obx(
                  // ignore: sized_box_for_whitespace
                  () => Container(
                    height: Get.height * 0.06,
                    width: Get.width,
                    //color: Colors.red,
                    child: RadioListTile(
                      title: const Text("Paypal"),
                      value: "Paypal",
                      groupValue: payment.value,
                      onChanged: (val) {
                        Get.to(const paypalscreen());
                        payment.value = val.toString();
                        //print(val.toString()+""+payment.value);
                      },
                    ),
                  ),
                ),
              ),
              //-------
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class paypalscreen extends StatelessWidget {
  const paypalscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UsePaypal(
          sandboxMode: true,
          clientId:
              "AW1TdvpSGbIM5iP4HJNI5TyTmwpY9Gv9dYw8_8yW5lYIbCqf326vrkrp0ce9TAqjEGMHiV3OqJM_aRT0",
          secretKey:
              "EHHtTDjnmTZATYBPiGzZC_AZUfMpMAzj2VZUeqlFUrRJA_C0pQNCxDccB5qoRQSEdcOnnKQhycuOWdP9",
          returnURL: "https://samplesite.com/return",
          cancelURL: "https://samplesite.com/cancel",
          transactions: const [
            {
              "amount": {
                "total": '10.12',
                "currency": "USD",
                "details": {
                  "subtotal": '10.12',
                  "shipping": '0',
                  "shipping_discount": 0
                }
              },
              "description": "The payment transaction description.",
              "item_list": {
                "items": [
                  {
                    "name": "A demo product",
                    "quantity": 1,
                    "price": '10.12',
                    "currency": "USD"
                  }
                ],
              }
            }
          ],
          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            log("onSuccess: $params");
          },
          onError: (error) {
            log("onError: $error");
          },
          onCancel: (params) {
            log('cancelled: $params');
          }),
    );
  }
}
