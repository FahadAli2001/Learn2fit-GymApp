import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Exercises/ExerciseScreen.dart';

<<<<<<< HEAD
=======
// ignore: must_be_immutable
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
class TrainingPlan extends StatelessWidget {
  TrainingPlan({Key? key}) : super(key: key);

  Color boxcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    var currentindex = 0.obs;
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/logo.JPG"), fit: BoxFit.fill)),
            ),
            //
            for (var i = 1; i <= 2; i++) ...[
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: GestureDetector(
                    onTap: () {
<<<<<<< HEAD
                      Get.to(const ExerciseScreen(),
=======
                      Get.to(() => ExerciseScreen(),
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                          arguments: {"dayvalue": i.toString()});
                      currentindex.value = i;
                    },
                    child: Container(
                      width: Get.width,
                      height: Get.height * 0.05,
                      decoration: BoxDecoration(
                          color:
                              (currentindex.value == i) ? Colors.green : null,
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
<<<<<<< HEAD
                            child: Text("Day ${i} "),
=======
                            child: Text("Day $i "),
>>>>>>> c84de79847f86ecd5175c1275834962061b22d32
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text("0% "),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
