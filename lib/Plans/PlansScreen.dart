import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Profile/ProfileSettingScreen.dart';
import 'PlansScreen/PlansDetailScreen.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("Learn2Fit",style: TextStyle(
            color: Colors.green
          ),),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: (){
              Get.to(ProfileSettingScreen());
            },
                icon: Icon(Icons.person),
            color: Colors.green,)
          ],
          backgroundColor: Colors.white70,
          bottom: TabBar(
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            tabs: [
              Tab( text: "Plans",),
              Tab(text: "Self Assesment")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PlansDetailScreen(),
            Container(),
          ],
        ),
      ),
    );
  }
}
