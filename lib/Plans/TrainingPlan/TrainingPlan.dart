import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class TrainingPlan extends StatelessWidget {
  const TrainingPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color boxcolor = Colors.white;
    var currentindex = 0.obs;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/logo.JPG"),
                fit: BoxFit.fill)
              ),
            ),
            //
            for(var i = 1; i <= 30 ; i++)...[
                  Obx(()=>
                     Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: GestureDetector(
                      onTap: (){
                        currentindex.value = i;
                      },
                      child: Container(
                      width: Get.width,
                      height: Get.height * 0.05,
                      decoration: BoxDecoration(
                        color: (currentindex.value == i )?Colors.green:null,
                        border: Border.all(
                          color: Colors.grey
                        )
                      ),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("Day ${i} "),
                      ),
                      Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
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
