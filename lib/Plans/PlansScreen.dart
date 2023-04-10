import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Insight/InsightScreen.dart';
import '../Profile/ProfileSettingScreen.dart';
import '../SelfAssesment/SelfAssesment.dart';
import 'PlansScreen/PlansDetailScreen.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Learn2Fit",
            style: TextStyle(color: Colors.green),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => ProfileSettingScreen());
              },
              icon: const Icon(Icons.person),
              color: Colors.green,
            )
          ],
          backgroundColor: Colors.white70,
          bottom: const TabBar(
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                text: "Plans",
              ),
              Tab(text: "Self Assesment"),
              Tab(text: "Insight"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [PlansDetailScreen(), SelfAssement(), InsightScreen()],
        ),
      ),
    );
  }
}
