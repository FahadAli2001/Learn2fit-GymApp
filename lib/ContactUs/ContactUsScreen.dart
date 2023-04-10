import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'ContactUsController.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ContactUsController cuc = Get.put(ContactUsController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    width: Get.width * 0.7,
                    height: Get.height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        image: const DecorationImage(
                            image: AssetImage("assets/image.PNG"),
                            fit: BoxFit.fill)),
                  ),
                ),
              ),
              //
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Working Hours",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.05),
                  ),
                ),
              ),
              //
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: RichText(
                    text: TextSpan(
                      text: 'SUN – THU : ',
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.045),
                      children: <TextSpan>[
                        TextSpan(
                            text: '03:00pm – 11.00pm',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: Get.width * 0.045)),
                      ],
                    ),
                  ),
                ),
              ),
              //
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: RichText(
                    text: TextSpan(
                      text: 'FRI – SAT :  ',
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.width * 0.045),
                      children: <TextSpan>[
                        TextSpan(
                            text: '09.00am – 11.00pm',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: Get.width * 0.045)),
                      ],
                    ),
                  ),
                ),
              ),
              //
              SizedBox(
                height: Get.height * 0.03,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Get In Touch",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.05),
                  ),
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                  title: Text("+92 331 976 1523"),
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                  title: Text("+974 5032 8074"),
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  title: Text("info@learn2fitt.com"),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Social Media",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                    )),
                  ],
                ),
              ),
              //
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () async {
                          cuc.facebookLaunch();
                        },
                        child: FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blueAccent,
                          size: Get.width * 0.1,
                        )),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(FontAwesomeIcons.whatsapp,
                        color: Colors.green, size: Get.width * 0.1),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          cuc.linkedinLaunch();
                        },
                        child: FaIcon(FontAwesomeIcons.linkedin,
                            color: Colors.blueAccent, size: Get.width * 0.1)),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          print("object");
                          cuc.instagramLaunch();
                        },
                        child: FaIcon(FontAwesomeIcons.instagram,
                            color: Colors.pinkAccent, size: Get.width * 0.1)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
