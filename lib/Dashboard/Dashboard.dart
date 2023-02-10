import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn2fit/Home/homePage.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

import '../ChatWithCoach/ChatWithCoach.dart';
import '../ContactUs/ContactUsScreen.dart';
import '../Profile/ProfileSettingScreen.dart';
import '../transformPackages/transformPackages.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController();

    return Scaffold(
        body: PageView(
          controller: _controller,
          children: <Widget>[
            homePage(),
            transformPackages(),
            ContactUsScreen(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: RollingBottomBar(
          color: Colors.white,
          controller: _controller,
          flat: true,
          // useActiveColorByDefault: false,
          items: [
            RollingBottomBarItem(Icons.home,
                label: 'Home', activeColor: Colors.green),
            RollingBottomBarItem(Icons.compare_arrows_outlined,
                label: 'Transform', activeColor: Colors.green),
            RollingBottomBarItem(Icons.contact_support,
                label: 'Contact-Us', activeColor: Colors.green),

          ],
          enableIconRotation: true,
          onTap: (index) {
            _controller.animateToPage(index,
                duration: const Duration(milliseconds: 400),
                curve: Curves.linear
                //easeOut,
                );
          },
        ));
  }
}
